module CO2Equivalents
  module Measurements
    class Lightbulbs < CO2Equivalents::Group
      description 'Average lightbulb energy usage'
      citation 'http://www.popularmechanics.com/home_journal/home_improvement/4215199.html'
      citation 'http://www.energystar.gov/ia/partners/promotions/change_light/downloads/CALFacts_and_Assumptions.pdf'

      equivalent :lightbulbs_for_a_year, 0.001846
      equivalent :lightbulbs_for_a_month, 0.022465
      equivalent :lightbulbs_for_a_week, 0.096278
      equivalent :lightbulbs_for_a_day, 0.673949
      equivalent :lightbulbs_for_an_evening, 4.043695
      equivalent :lightbulbs_to_CFLs_for_a_day, 11.471476
      equivalent :lightbulbs_to_CFLs_for_a_week, 1.638782
      equivalent :lightbulbs_to_CFLs_for_a_month, 0.382383
      equivalent :lightbulbs_to_CFLs_for_a_year, 0.031429
      equivalent :days_with_lightbulbs_to_CFLs, 0.254922
      equivalent :weeks_with_lightbulbs_to_CFLs, 0.036417
      equivalent :months_with_lightbulbs_to_CFLs, 0.008497
      equivalent :years_with_lightbulbs_to_CFLs, 0.000698
    end
  end
end
