module BonaFide
  class Session
    def initialize(app)
      @app = app
    end

    def call(env)
      @env = env

      if cookie = get_cookie
        BonaFide.config.set_base(cookie)
      end
      
      @app.call(env)
    end
    
    private

    def cookies
      @cookies ||= @env["action_dispatch.cookies"] || Rack::Request.new(@env).cookies
    end

    def get_cookie
      return if cookies.nil?

      cookie_name = BonaFide.config.cookie_name
      return if cookie_name.nil?

      cookies[cookie_name]
    end
  end
end
