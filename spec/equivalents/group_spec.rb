require 'spec_helper'

describe Equivalents::Group do
  it 'defines an equivalence group' do
    class Firework < Equivalents::Group
      description 'Pretty'
      citation 'http://boom.com', :title => 'Sparkle', :author => 'John Doe'

      equivalent :mobile_offshore_drilling_unit_operations_for_a_day, 0.465
      equivalent :mobile_offshore_drilling_unit_operations_for_a_year, 169.725
      equivalent :semi_submersible_crane_vessel_operations_for_a_day, 0.572
      equivalent :semi_submersible_crane_vessel_operations_for_a_year, 208.78
    end

    Firework.description.should == 'Pretty'
    citation = Firework.citations.first
    citation.url.should == 'http://boom.com'
    citation.title.should == 'Sparkle'
    citation.author.should == 'John Doe'
  end

  describe '.description' do
    it 'sets a description' do
      c = Class.new Equivalents::Group
      c.description 'Testing'
      c.description.should == 'Testing'
    end
  end

  describe '.citation' do
    it 'creates a citation' do
      c = Class.new Equivalents::Group
      c.citation 'http://example.com', :title => 'Title', :author => 'John Doe'
      citation = c.citations.first
      citation.should be_a(Equivalents::Citation)
      citation.url.should == 'http://example.com'
      citation.title.should == 'Title'
      citation.author.should == 'John Doe'
    end
  end

  describe '.equivalent' do
    it 'creates an equivalent' do
      c = Class.new Equivalents::Group
      c.equivalent :test_equivalent, 0.001
      Equivalents.registry[:test_equivalent].should be_a(Equivalents::Equivalent)
    end
  end
end

