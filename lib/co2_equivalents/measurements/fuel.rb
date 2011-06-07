module CO2Equivalents
  module Measurements
    class Fuel < CO2Equivalents::Group
      description 'Average fuel consumption'
      citation 'http://www.epa.gov/cleanenergy/energy-resources/refs.html'

      equivalent :barrels_of_petroleum, 0.002326
      equivalent :canisters_of_bbq_propane, 0.041667
      equivalent :railroad_cars_full_of_coal, 0.000005
    end
  end
end
