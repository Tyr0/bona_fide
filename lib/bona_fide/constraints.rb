module BonaFide
  class Constraints
    def initialize(getter)
      @getter = getter
    end

    def matches?(request)
      BonaFide.config.base_class.send(@getter)
    end
  end
end
