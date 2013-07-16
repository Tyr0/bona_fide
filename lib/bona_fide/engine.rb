# This file ensures BonaFide is loaded as middleware on application initialization
# See: http://api.rubyonrails.org/classes/Rails/Engine.html
require 'bona_fide/session'

module BonaFide
  class Engine < Rails::Engine
    initializer "bona_fide.initializer" do |app|
      app.middleware.use BonaFide::Session
    end
  end
end
