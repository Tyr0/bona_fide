module BonaFide
  class Constraints
    def initialize(getter)
      @getter = getter
    end

    def matches?(request)
      @config.base_class.send(@getter)
    end
  end
end
