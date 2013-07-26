module TestUser
  TEST_TOKEN = "test_token"
  
  def self.authenticate(token)
    if token == TestUser::TEST_TOKEN
      return true
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
