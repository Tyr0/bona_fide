require 'rake'
require 'rspec/core/rake_task'

desc "Default"
task :default => [:all]

desc 'Test the engine under all supported Rails versions'
task :all do |t|
  exec 'rake spec'
end

RSpec::Core::RakeTask.new(:spec)
