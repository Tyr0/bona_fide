require 'spec_helper.rb'

describe "BonaFide" do
  it "should load without errors" do
    expect { require 'bona_fide' }.not_to raise_error
  end

  it "should be valid" do
    BonaFide.should be_a(Module)
  end
  
  it "should be configurable" do
    intialize_default_configuration

    BonaFide.config.base_class.should eq(BonaFideHelper::User)
    BonaFide.config.setter.should eq(:authenticate)
    BonaFide.config.cookie_name.should eq(BonaFideHelper::User::COOKIE_NAME)
  end
end
