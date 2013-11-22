require "test_helper"

class SimpleContact::MessageTest < ActiveSupport::TestCase

  def setup
    @message = build(:message)
  end

  def test_valid
    assert @message.valid?
    assert_match /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, @message.email
  end

  test "rejects a message without a body" do
    @message.body = nil
    assert @message.invalid?
  end

  test "rejects a message without a subject" do
    @message.subject = nil
    assert @message.invalid?
  end
  
  test "rejects a message without a name" do
    @message.name = nil
    assert @message.invalid?
  end  

  test "rejects a message without a email" do
    @message.email = nil
    assert @message.invalid?, "Doesn't have an email"
  end

  test "checks that email has a valid format" do
    @message.email = 'invalid@example,com'
    assert @message.invalid?, "email format was not invalid"
    refute_match /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, @message.email
  end


end

