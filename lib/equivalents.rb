require 'equivalents/citation'
require 'equivalents/equivalent'
require 'equivalents/group'

module Equivalents
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

require 'equivalents/measurements'
