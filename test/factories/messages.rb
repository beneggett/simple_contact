# Read about factories at https://github.com/thoughtbot/factory_girl
require 'ffaker'
FactoryGirl.define do
  factory :message, class: SimpleContact::Message do
    body        { Faker::Lorem.paragraph }
    email       { Faker::Internet.email } 
    name        { Faker::Name.name }
    subject     { Faker::Lorem.sentence }
  end
end
