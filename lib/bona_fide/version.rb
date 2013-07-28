module BonaFide
  def self.version
    Gem::Version.new("0.0.1")
  end
  
  module VERSION
    MAJOR, MINOR, TINY, PRE = BonaFide.version.segments
    STRING = BonaFide.version.to_s
  end
end
