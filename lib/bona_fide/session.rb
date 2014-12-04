module BonaFide
  class Session
    def initialize(app)
      @app = app
    end

    # Called on every web request,
    def call(env)
      @env = env
      # reset cookies on each request
      @cookies = nil

      if cookie = get_cookie
        BonaFide.config.call_setter(cookie)
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
