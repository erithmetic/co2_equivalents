require 'co2_equivalents/citation'
require 'co2_equivalents/equivalent'
require 'co2_equivalents/group'
require 'co2_equivalents/result_set'

module CO2Equivalents
  class << self
    def register(*args)
      equivalent = Equivalent.new *args
      registry[equivalent.name] = equivalent
    end

    def registry
      @registry ||= {}
    end

    def grok(kgs_co2, *args)
      ResultSet.compute kgs_co2, *args
    end

    def groups
      @groups ||= []
    end
  end
end

require 'co2_equivalents/measurements'
