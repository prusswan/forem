require 'spec_helper'

describe 'Configuration' do
  before { Forem::Engine.user_class = nil }

  it "user_class must be set" do
    config = lambda { Forem::Engine.user_class }
    error = "Please define Forem::Engine.user_class" +
            " in config/initializers/forem.rb"
    config.should raise_error(Forem::ConfigurationNotSet, error)
    Forem::Engine.user_class = User
    config.should_not raise_error(Forem::ConfigurationNotSet)
  end
end
