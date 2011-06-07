module CO2Equivalents
  module Measurements
    class Food < CO2Equivalents::Group
      description 'Average food consumption'
      citation 'http://switchboard.nrdc.org/blogs/dlashof/prius_v_vegan.html'

      equivalent :vegan_meals_instead_of_non_vegan_ones, 0.804687
      equivalent :days_of_veganism, 0.268229
      equivalent :weeks_of_veganism, 0.038318
      equivalent :months_of_veganism, 0.008941
      equivalent :years_of_veganism, 0.000735
    end
  end
end
