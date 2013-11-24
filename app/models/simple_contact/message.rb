class SimpleContact::Message   
  # Simple Contact is a non-active record model, however we still use validations from active model as such.
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  # Set's up the fields for our message
  attr_accessor :body, :email, :name, :subject

  # Validates presence of all fields by default
  validates :body, :subject, :name, :email, presence: true

  # Validates email format & displays a customizable error message from the translation file
  validates :email, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: I18n.translate(:invalid_email_message) }


  # Setup code to make it work like an AR model would
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end
end

