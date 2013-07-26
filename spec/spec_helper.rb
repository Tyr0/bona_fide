require 'rspec/expectations'
require 'rails'
require 'test_user'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.include RSpec::Matchers
  config.include TestUser, :include_user
=begin
  config.mock_with :rspec
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
=end
end

def intialize_default_configuration
  BonaFide.configure do |config|
    config.base_class = TestUser
    config.setter = :authenticate
    config.cookie_name = "user_token"
  end
end
