module BonaFide
  class Configuration
    attr_accessor :cookie_name, :base_class, :setter

    def set_base(cookie)
      @base_class.send(@setter, cookie)
    end
  end
end
