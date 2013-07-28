module BonaFide
  class Constraint
    # Sets up a constraint for use with <tt>ActionDispatch::Routing</tt>. Pass
    # in a method, +getter+, to be called on the specified +base_class+ for the
    # current <tt>BonaFide</tt> session.
    def initialize(getter)
      @getter = getter
    end

    # Called from <tt>ActionDispatch::Routing</tt>, calls the requested +getter+ method
    # on the <tt>BonaFide::Configuration</tt> +base_class+. The response should be
    # either +true+ or +false+.
    def matches?(request)
      BonaFide.config.base_class.send(@getter)
    end
  end
end
