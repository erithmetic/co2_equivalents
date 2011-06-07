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
end
