require 'test_helper'

class SimpleContact::ContactControllerTest < ActionController::TestCase

  before do 
    @routes = SimpleContact::Engine.routes
    ENV['SIMPLE_CONTACT_TO_EMAIL'] = 'test@gmail.com'
    ENV['SIMPLE_CONTACT_SUBJECT_PREFIX'] = "[Simple Contact]"
  end


  test "displays the new contact us page correctly" do 
    get :new
    assert_response :success
    assert_template :new
  end

  test "sends a contact email and redirects to the home page and displays a notice to the user" do
    message_attributes = attributes_for(:message)
    post :create, message: message_attributes
    # Test that the email is actually being sent.
    assert_equal ActionMailer::Base.deliveries.last.from.pop, message_attributes[:email]
    assert_response :redirect
    assert_redirected_to '/'
    assert flash[:notice].present?
  end

  test "doesn't send a message & renders the new template for invalid messages" do
    post :create, message: attributes_for(:message, email: nil)
    assert_response :success
    assert_template :new
  end
end
