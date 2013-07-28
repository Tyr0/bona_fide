# This file ensures BonaFide is loaded as middleware on application initialization
# See: http://api.rubyonrails.org/classes/Rails/Engine.html
require 'bona_fide/session'

module BonaFide
  # This is a subclass of <tt>Rails::Engine</tt> so that it gets
  # called on startup of <tt>Rails</tt> applications, although
  # the basic setup for <tt>BonaFide::Configuration</tt> is
  # still required.
  class Engine < Rails::Engine
    initializer "bona_fide.initializer" do |app|
      app.middleware.use BonaFide::Session
    end
  end
end
