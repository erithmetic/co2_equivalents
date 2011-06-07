require 'spec_helper'

describe CO2Equivalents do
  describe '.register' do
    it 'registers an equivalent' do
      CO2Equivalents.register 'Computer', :test_eq, 0.013
      equivalent = CO2Equivalents.registry[:test_eq]
      equivalent.should be_a(CO2Equivalents::Equivalent)
      equivalent.group.should == :computer
      equivalent.name.should == :test_eq
      equivalent.factor.should == 0.013
    end
  end

  describe '.grok' do
    it 'returns the result of an equivalence calculation' do
      result_set = CO2Equivalents.grok(334.5)
      result_set.should be_a(CO2Equivalents::ResultSet)
      result_set[:days_of_veganism].should > 0
    end
    it 'returns correct results' do
      CO2Equivalents.grok(1300)[:one_way_domestic_flight].to_i.should == 4
    end

    it 'limits results to a chosen category'
    it 'limits results to a set of chosen categories'
    it 'limits results to a chosen unit'
    it 'limits results to a set of chosen units'
  end
end
