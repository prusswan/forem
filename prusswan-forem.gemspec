$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "forem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "prusswan-forem"
  s.version     = Forem::VERSION
  s.authors     = ["prusswan"]
  s.email       = ["prusswan@gmail.com"]
  s.homepage    = "https://github.com/prusswan/forem"
  s.summary     = "prusswan's forem gem"
  s.description = "prusswan's forem gem"

  s.files = `git ls-files`.split("\n")

  s.add_dependency "rails", "~> 3.2.7"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"

  s.add_development_dependency "rspec-rails", "~> 2.5"
  s.add_development_dependency "capybara"
end
