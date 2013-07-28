require 'rspec/expectations'
require 'rails'
require 'bona_fide_helper'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.include RSpec::Matchers
  config.include BonaFideHelper
end

def intialize_default_configuration
  BonaFide.configure do |config|
    config.base_class = BonaFideHelper::User
    config.setter = :authenticate
    config.cookie_name = BonaFideHelper::User::COOKIE_NAME
  end
end

