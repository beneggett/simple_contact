class SimpleContact::ContactMailer < ActionMailer::Base
  def contact_message(message)
    @message = message
    mail(to: ENV['SIMPLE_CONTACT_TO_EMAIL'], from: @message.email, subject: "#{ENV['SIMPLE_CONTACT_SUBJECT_PREFIX']} #{@message.subject}" )
  end
end
