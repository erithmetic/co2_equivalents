$:.push File.expand_path("../lib", __FILE__)
require 'co2_equivalents/version'

Gem::Specification.new do |s|
  s.name = 'co2_equivalents'
  s.version = CO2Equivalents::VERSION
  s.platform = Gem::Platform::RUBY
  s.date = '2011-06-06'
  s.authors = ['Derek Kastner']
  s.email = 'dkastner@gmail.com'
  s.homepage = 'http://github.com/dkastner/equivalents'
  s.summary = %Q{Convert everyday units into human-grokable terms}
  s.description = %Q{CO2Equivalents converts everyday units of measurement into human-grokable units. For instance, you can convert kilograms of CO2 into "number of cars on the road for a day." It also adds the ability to list out a group of equivalences.}
  s.extra_rdoc_files = [
    'LICENSE',
    'README.markdown',
  ]

  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.7')
  s.rubygems_version = '1.3.7'
  s.specification_version = 3

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'bueller'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rcov'
  s.add_dependency 'activesupport'
  s.add_dependency 'i18n'
end

