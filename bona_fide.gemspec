$:.push File.expand_path("../lib", __FILE__)

require 'bona_fide/version'

Gem::Specification.new do |s|
  # human readable information
  s.name = "bona_fide"
  s.version = BonaFide.version
  s.authors = ["Tyler Calderone"]
  s.email = "bona_fide@tylercalderone.com"
  s.homepage = "http://github.com/tyr0/bona_fide"
  s.summary = "Low level Rack authentication enforcement"
  # file requirements
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- spec/*`.split("\n")
  s.extra_rdoc_files = %w(README.md)
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  # gem requirements
  s.required_ruby_version = Gem::Requirement.new('>= 1.9.2')
  s.add_dependency("rack", ">= 1.0")
end
