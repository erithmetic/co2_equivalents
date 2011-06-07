# CO2 Equivalents

`co2_equivalents` converts CO2 measurements into human-[grok](http://en.wikipedia.org/wiki/Grok)able units. For instance, you can convert kilograms of CO2 into "number of cars on the road for a day." It also adds the ability to list out a group of equivalents.

# Usage

```ruby
require 'co2_equivalents'

# simple unit conversion
puts Equivalents.grok(2840.7, :cars_driven_for_a_day)
#=> 343.6

# return the default hash of equivalents
puts Equivalents.grok(2840.7).to_hash.inspect
#=> {
  :light_bulbs_for_a_year: 1234.5,
  :light_bulbs_for_a_day: 454534.5,
  ...
  :cars_driven_for_a_day: 343.6
}

# return a hash of equivalents for the electricity category
puts Equivalents.grok(2840.7, :electricity).to_hash.inspect
#=> {
  :light_bulbs_for_a_year: 1234.5,
  :light_bulbs_for_a_day: 454534.5,
  ...
}

# defining your own equivalents
class SemiSubmersible < Equivalents::Group
  description 'Conversions for semi-submersible vehicles, such as oil platforms'
  citation 'http://shipinfo.org/index4.htm', :title => 'Ship Information Warehouse Statistics', :author => 'John Doe'

  equivalent :mobile_offshore_drilling_unit_operations_for_a_day, 0.465
  equivalent :mobile_offshore_drilling_unit_operations_for_a_year, 169.725
  equivalent :semi_submersible_crane_vessel_operations_for_a_day, 0.572
  equivalent :semi_submersible_crane_vessel_operations_for_a_year, 208.78
end
```

You can view the default set of equivalents in [lib/co2_equivalents/measurements](http://github.com/dkastner/co2_equivalents/tree/master/lib/co2_equivalents/measurements).

# Note on Patches/Pull Requests
 
* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a
  future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
* Send me a pull request. Bonus points for topic branches.

# Copyright

Copyright (c) 2011 Derek Kastner. See LICENSE for details.
