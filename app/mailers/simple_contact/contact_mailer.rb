class SimpleContact::ContactMailer < ActionMailer::Base

  # The to, cc, and bcc addresses can be customized in your own application by creating the appropriate environment variables ENV['SIMPLE_CONTACT_TO_EMAIL'], ENV['SIMPLE_CONTACT_CC_EMAIL'], ENV['SIMPLE_CONTACT_BCC_EMAIL'] respectively
  # An optional subject prefix can be customized in your own application by creating the environment variable ENV['SIMPLE_CONTACT_SUBJECT_PREFIX']. e.g. if ENV['SIMPLE_CONTACT_SUBJECT_PREFIX'] = '[Our Cool Site]' the subject would be rendered as "[Our Cool Site] {subject of the message}"
  def contact_message(message)
    @message = message
    mail(
        to: ENV['SIMPLE_CONTACT_TO_EMAIL'], 
        cc: ENV['SIMPLE_CONTACT_CC_EMAIL'], 
        bcc: ENV['SIMPLE_CONTACT_BCC_EMAIL'], 
        from: @message.email, 
        subject: [ENV['SIMPLE_CONTACT_SUBJECT_PREFIX'], @message.subject].join(' ') 
      )
  end

end
