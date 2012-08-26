# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rext/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Vladimir Melnick"]
  gem.email         = ["egotraumatic@gmail.com"]
  gem.description   = %q{Учебный проект по расширению базовых типов Ruby}
  gem.summary       = %q{Учебный проект по расширению базовых типов Ruby}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rext"
  gem.require_paths = ["lib"]
  gem.version       = Rext::VERSION

  gem.add_development_dependency "rspec", "~> 2.11"
end
