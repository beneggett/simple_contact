require "coveralls"
Coveralls.wear!('rails')
ENV["RAILS_ENV"] = "test"
require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/spec" # require this if you wan't spec syntax support
require 'factory_girl'
FactoryGirl.find_definitions

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output
require "minitest/pride"

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
end

class ActionController::TestCase
  include FactoryGirl::Syntax::Methods
end
