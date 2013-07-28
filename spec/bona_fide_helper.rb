module BonaFideHelper
  class User
    COOKIE_NAME = "user_cookie"
    TEST_TOKEN = "test_token"

    def self.authenticate(token)
      case token
      when BonaFideHelper::User::TEST_TOKEN.to_s
        return true
      when "session_spec_test"
        raise StandardError, "RAISE_FOR_SUCCESS"
      end

      false
    end

    def self.true_method
      true
    end

    def self.false_method
      false
    end
  end
  
  class Application < Rails::Application
    config.active_support.deprecation = :stderr
    config.threadsafe!
  end
end
