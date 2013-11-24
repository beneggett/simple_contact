$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_contact/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_contact"
  s.version     = SimpleContact::VERSION
  s.authors     = ["Ben Eggett"]
  s.email       = ["beneggett@gmail.com"]
  s.homepage    = "http://github.com/beneggett/simple_contact"
  s.summary     = "Provides a stupidly simple contact form with bootstrap class theming for rails"
  s.description = "Provides a stupidly simple contact form with bootstrap class theming for rails"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.15"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "minitest-rails"
  s.add_development_dependency "factory_girl_rails", '~> 4.2.0'
  s.add_development_dependency "ffaker"
  s.add_development_dependency "coveralls"
end
