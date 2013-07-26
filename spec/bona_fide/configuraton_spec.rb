require 'spec_helper'

describe "BonaFide::Configuration" do
  before(:all) { require 'bona_fide' }
  
  let (:config) { BonaFide::Configuration.new }

  it "should allow read/write of :base_class" do
    config.should respond_to(:base_class)
    config.should respond_to(:base_class=)
  end

  it "should allow read/write of :cookie_name" do
    config.should respond_to(:cookie_name)
    config.should respond_to(:cookie_name=)
  end

  it "should allow read/write of :setter" do
    config.should respond_to(:setter)
    config.should respond_to(:setter=)
  end

  it "should reset on initialize" do
    config.base_class.should eq(nil)
    config.cookie_name.should eq(nil)
    config.setter.should eq(nil)
  end

  describe "#call_base", :include_user do
    it "should respond to :call_base" do
      config.should respond_to(:call_base)
    end
    
    it "should call :setter on :base_class" do
      config.base_class = TestUser
      config.setter = :authenticate

      config.send(:call_base, TestUser::TEST_TOKEN).should eq(true)
    end
  end
end
