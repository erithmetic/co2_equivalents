module Equivalents
  module Measurements
    class Flight < Equivalents::Group
      description 'Average flight emissions'
      citation 'http://www.bts.gov/press_releases/2007/bts042_07/html/bts042_07.html#table_7', :title => 'June 2007 Airline Traffic Data', :author => 'Dave Smallen'

      equivalent :one_way_domestic_flight, 0.003250
      equivalent :round_trip_domestic_flight, 0.001625
      equivalent :one_way_cross_country_flight, 0.001142
      equivalent :round_trip_cross_country_flight, 0.000571
    end
  end
end
