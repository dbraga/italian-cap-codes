# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ita_regions_districts_municipalities/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Damiano Braga"]
  gem.email         = ["damiano.braga@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ita_regions_districts_municipalities"
  gem.require_paths = ["lib"]
  gem.version       = ItaRegionsDistrictsMunicipalities::VERSION
end
