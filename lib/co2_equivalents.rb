require 'co2_equivalents/citation'
require 'co2_equivalents/equivalent'
require 'co2_equivalents/group'

module CO2Equivalents
  class << self
    def register(*args)
      equivalent = Equivalent.new *args
      registry[equivalent.name] = equivalent
    end

    def registry
      @registry ||= {}
    end
  end
end

require 'co2_equivalents/measurements'
