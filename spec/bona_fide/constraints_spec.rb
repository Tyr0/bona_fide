require 'spec_helper'

describe "BonaFide::Constraint" do
  before(:all) { require 'bona_fide' }

  before(:all) {
    intialize_default_configuration
  }

  it "should initialize with getter" do
    expect { BonaFide::Constraint.new(:getter) }.not_to raise_error
  end

  it "should return true for true" do
    constraint = BonaFide::Constraint.new(:true_method)
    constraint.matches?(nil).should be(true)
  end

  it "should return false for false" do
    constraint = BonaFide::Constraint.new(:false_method)
    constraint.matches?(nil).should be(false)
  end
end
