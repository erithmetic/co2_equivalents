module CO2Equivalents
  class ResultSet < Hash
    def self.compute(kgs_co2, *args)
      set = new kgs_co2, *args
      set.compute
      set
    end

    attr_accessor :kgs_co2, :constraints

    def initialize(kgs_co2, *args)
      self.kgs_co2 = kgs_co2
      self.constraints = args
    end

    def compute
      CO2Equivalents.groups.each do |group|
        group.equivalences.each do |name, equivalent|
          self[name] = kgs_co2.to_f * equivalent.factor
        end
      end
    end
  end
end
