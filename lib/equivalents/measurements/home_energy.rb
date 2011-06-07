module Equivalents
  module Measurements
    class HomeEnergy < Equivalents::Group
      description 'Average home energy usage'
      citation 'http://www.eia.doe.gov/cneaf/electricity/epa/epates.html'
      citation 'http://www.epa.gov/climatechange/emissions/ind_calculator.html'
      citation 'http://buildingsdatabook.eren.doe.gov/docs/7.3.2.pdf'
      citation 'http://ecomall.com/greenshopping/20things.htm'
      citation 'http://www.oag.state.ny.us/consumer/tips/energy_conservation.html'

      equivalent :homes_energy_in_a_year, 0.000097
      equivalent :homes_energy_in_a_month, 0.001159
      equivalent :homes_energy_in_a_week, 0.005021
      equivalent :homes_energy_in_a_day, 0.035247
      equivalent :homes_electricity_in_a_year, 0.000147
      equivalent :homes_electricity_in_a_month, 0.001759
      equivalent :homes_electricity_in_a_week, 0.007622
      equivalent :homes_electricity_in_a_day, 0.053499
      equivalent :homes_with_lowered_thermostat_2_degrees_for_a_winter, 0.005249
      equivalent :homes_with_raised_thermostat_3_degrees_for_a_summer, 0.002360
      equivalent :replaced_refrigerators, 0.001007  # old (1970s) refigerators replaced with new, energy efficient ones
      equivalent :loads_of_cold_laundry, 0.458562
    end
  end
end
