module Equivalents
  module Measurements
    class Recyling < Equivalents::Group
      description 'Energy saved by recycling'
      citation 'http://www.epa.gov/cleanenergy/energy-resources/refs.html'
      citation 'http://onetonco2.com/oneton.php'
      citation 'http://www.epa.gov/epaoswer/non-hw/muncpl/pubs/msw06.pdf'

      equivalent :recycled_kgs_of_trash, 0.689655
      equivalent :recycled_bags_of_trash, 0.382135
    end
  end
end
