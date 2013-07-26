require 'bona_fide/configuration'
require 'bona_fide/constraint'
require 'bona_fide/version'
if defined?(Rails)
  require 'bona_fide/engine'
end

module BonaFide
  class << self
    attr_accessor :config
  end
  
  def self.configure
    @config ||= BonaFide::Configuration.new
    yield config
  end
end
