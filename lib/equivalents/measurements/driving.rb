module Equivalents
  module Measurements
    class Driving < Equivalents::Group
      description 'Average automobile travel'
      citation 'http://www.epa.gov/otaq/climate/420f05004.htm'
      citation 'http://www.bts.gov/publications/national_transportation_statistics/html/table_04_23.html'
      citation 'http://www.fueleconomy.gov/feg/2008car1tablef.jsp?id=24882'
      citation 'http://abcnews.go.com/Technology/Traffic/story?id=485098'

      equivalent :cars_off_the_road_for_a_year, 0.000182  # taking X cars off the road for a year
      equivalent :cars_off_the_road_for_a_month, 0.002182
      equivalent :cars_off_the_road_for_a_week, 0.009455
      equivalent :cars_off_the_road_for_a_day, 0.066366
      equivalent :cars_to_priuses_for_a_year, 0.000364 #switching X cars to Priuses for a year
      equivalent :cars_to_priuses_for_a_month, 0.004364
      equivalent :cars_to_priuses_for_a_week, 0.018910
      equivalent :cars_to_priuses_for_a_day, 0.132732
    end
  end
end
