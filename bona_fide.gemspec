$:.push File.expand_path("../lib", __FILE__)

require 'bona_fide/version'

Gem::Specification.new do |s|
  s.name = "bona_fide"
  s.version = BonaFide::VERSION::STRING
  s.authors = ["Tyler Calderone"]
  s.email = "bona_fide@tylercalderone.com"
  s.homepage = "http://github.com/tyr0/bona_fide"
  s.summary = "Low level Rack authentication enforcement"
  s.files = %w(
    lib/bona_fide.rb
    lib/bona_fide/version.rb
    lib/bona_fide/engine.rb
    lib/bona_fide/configuration.rb
    lib/bona_fide/session.rb
    lib/bona_fide/constraints.rb
  )
  s.add_dependency("rack", ">= 1.0")
end
