require 'bona_fide/configuration'
require 'bona_fide/constraints'
require 'bona_fide/engine'
require 'bona_fide/version'

module BonaFide
  class << self
    attr_accessor :config
  end
  
  def self.configure
    @config ||= BonaFide::Configuration.new
    yield config
  end
end
