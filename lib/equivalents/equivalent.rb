require 'active_support/core_ext/string/conversions'

module Equivalents
  class Equivalent
    attr_accessor :group, :name, :factor

    def initialize(group, name, factor)
      self.group = group.to_s.underscore.to_sym
      self.name = name
      self.factor = factor
    end
  end
end
