require 'spec_helper'

describe Equivalents do
  describe '.register' do
    it 'registers an equivalent' do
      Equivalents.register 'Computer', :test_eq, 0.013
      equivalent = Equivalents.registry[:test_eq]
      equivalent.should be_a(Equivalents::Equivalent)
      equivalent.group.should == :computer
      equivalent.name.should == :test_eq
      equivalent.factor.should == 0.013
    end
  end
end
