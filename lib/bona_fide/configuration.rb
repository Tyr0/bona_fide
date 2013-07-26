module BonaFide
  class Configuration
    attr_accessor \
      :base_class,
      :cookie_name,
      :setter

    def call_base(cookie)
      @base_class.send(@setter, cookie)
    end
  end
end
