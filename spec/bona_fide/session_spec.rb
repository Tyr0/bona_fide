require 'spec_helper'

describe "BonaFide::Session" do
  before(:all) { BonaFideHelper::Application.initialize! }
  
  it "should be valid" do
    expect { BonaFide::Session.new(nil) }.not_to raise_error
  end

  it "should intialize fine" do
    session = BonaFide::Session.new(BonaFideHelper::Application)
    session.call(Rack::MockRequest.env_for("/"))
  end

  it "should read requested cookie" do
    session = BonaFide::Session.new(BonaFideHelper::Application)

    # setup mock request
    env = Rack::MockRequest.env_for("/")
    # add cookie to request
    env["action_dispatch.cookies"] = {
      BonaFideHelper::User::COOKIE_NAME => "session_spec_test"
    }

    # make sure it raises the proper error (better way to check?)
    expect { session.call(env) }.to raise_error(StandardError, "RAISE_FOR_SUCCESS")
  end
end
