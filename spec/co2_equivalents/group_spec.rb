require 'spec_helper'

class Firework < CO2Equivalents::Group
  description 'Pretty'
  citation 'http://boom.com', :title => 'Sparkle', :author => 'John Doe'

  equivalent :firecracker, 0.465
  equivalent :roman_candle, 169.725
  equivalent :sparkler, 0.572
  equivalent :whipper_snapper, 208.78
end

describe CO2Equivalents::Group do
  it 'defines an equivalence group' do
    Firework.description.should == 'Pretty'
    citation = Firework.citations.first
    citation.url.should == 'http://boom.com'
    citation.title.should == 'Sparkle'
    citation.author.should == 'John Doe'
  end

  it 'tracks the group in a global list' do
    CO2Equivalents.groups.should include(Firework)
  end

  describe '.description' do
    it 'sets a description' do
      c = Class.new CO2Equivalents::Group
      c.description 'Testing'
      c.description.should == 'Testing'
    end
  end

  describe '.citation' do
    it 'creates a citation' do
      c = Class.new CO2Equivalents::Group
      c.citation 'http://example.com', :title => 'Title', :author => 'John Doe'
      citation = c.citations.first
      citation.should be_a(CO2Equivalents::Citation)
      citation.url.should == 'http://example.com'
      citation.title.should == 'Title'
      citation.author.should == 'John Doe'
    end
  end

  describe '.equivalent' do
    it 'creates an equivalent' do
      c = Class.new CO2Equivalents::Group
      c.equivalent :test_equivalent, 0.001
      CO2Equivalents.registry[:test_equivalent].should be_a(CO2Equivalents::Equivalent)
    end
    it 'keeps track of which equivalences belong to the group' do
      c = Class.new CO2Equivalents::Group
      c.equivalent :test_a, 0.001
      c.equivalent :test_b, 0.002
      c.equivalences[:test_a].factor.should == 0.001
      c.equivalences[:test_b].factor.should == 0.002
    end
  end
end

