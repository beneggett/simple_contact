require 'test_helper'

class SimpleContact::ContactMailerTest < ActionMailer::TestCase

  before do 
    @routes = SimpleContact::Engine.routes
    ENV['SIMPLE_CONTACT_TO_EMAIL'] = 'test@example.com'
    ENV['SIMPLE_CONTACT_SUBJECT_PREFIX'] = "[Simple Contact]"
    @message = build(:message)
    @email = SimpleContact::ContactMailer.contact_message(@message).deliver
  end

  it "is delivered to simple_contact_to_email" do
    assert_equal @email.to.pop, ENV['SIMPLE_CONTACT_TO_EMAIL']
  end

  it "is delivered from the senders email" do
    assert_equal @email.from.pop, @message.email
  end

  it "is delivered with an appropriate subject" do
    assert_equal @email.subject, "#{ENV['SIMPLE_CONTACT_SUBJECT_PREFIX']} #{@message.subject}"
  end

end