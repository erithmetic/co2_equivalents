require 'spec_helper'

describe CO2Equivalents::ResultSet do
  describe '.compute' do
    it 'returns a computed ResultSet' do
      result = CO2Equivalents::ResultSet.compute(344)
      result.should be_a(CO2Equivalents::ResultSet)
      result.should_not be_empty
    end
  end

  describe '#compute' do
    it 'popultes the results for all groups' do
      set = CO2Equivalents::ResultSet.new 322
      set.compute
      set.should_not be_empty
      set.each do |name, value|
        value.should > 0
      end
    end
    it 'populates results for specified groups'
    it 'populates results for specified units'
  end
end

