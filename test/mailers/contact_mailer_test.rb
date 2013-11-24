require 'test_helper'

class SimpleContact::ContactMailerTest < ActionMailer::TestCase

  before do 
    @routes = SimpleContact::Engine.routes
    # Tests that single email addresses or multiple comma separated email address work as well.
    ENV['SIMPLE_CONTACT_TO_EMAIL'] = 'test@example.com'
    ENV['SIMPLE_CONTACT_CC_EMAIL'] = 'cc_me@example.com, cc_me2@example.com'
    ENV['SIMPLE_CONTACT_BCC_EMAIL'] = 'bcc_me@example.com, bcc_me2@example.com'
    ENV['SIMPLE_CONTACT_SUBJECT_PREFIX'] = "[Simple Contact]"
    
    @message = build(:message)
    @email = SimpleContact::ContactMailer.contact_message(@message).deliver
  end

  it "is delivered to the appropriate addresses" do
    assert_equal @email.to.join(', '), ENV['SIMPLE_CONTACT_TO_EMAIL']
    assert_equal @email.cc.join(', '), ENV['SIMPLE_CONTACT_CC_EMAIL']
    assert_equal @email.bcc.join(', '), ENV['SIMPLE_CONTACT_BCC_EMAIL']
  end

  it "is delivered from the senders email" do
    assert_equal @email.from.first, @message.email
  end

  it "is delivered with an appropriate subject" do
    assert_equal @email.subject, [ENV['SIMPLE_CONTACT_SUBJECT_PREFIX'], @message.subject].join(' ') 
  end

end