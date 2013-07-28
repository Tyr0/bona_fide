module BonaFide
  def self.version
    Gem::Version.new("0.1.0")
  end
  
  module VERSION
    MAJOR, MINOR, TINY, PRE = BonaFide.version.segments
    STRING = BonaFide.version.to_s
  end
end
