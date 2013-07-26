require 'rspec/expectations'
require 'rails'
require 'test_user'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.include RSpec::Matchers
  config.include TestUser, :include_user
end

def intialize_default_configuration
  BonaFide.configure do |config|
    config.base_class = TestUser
    config.setter = :authenticate
    config.cookie_name = "user_token"
  end
end
