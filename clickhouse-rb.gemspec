# -*- encoding: utf-8 -*-
require File.expand_path("../lib/clickhouse/version", __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = [ 'Marketly' ]
  gem.email         = [ 'eng@marketly.com' ]
  gem.summary       = %q{A Ruby database driver for ClickHouse}
  gem.description   = %q{A Ruby database driver for ClickHouse}
  gem.homepage      = 'https://github.com/marketly/clickhouse-rb'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'clickhouse-rb'
  gem.require_paths = [ 'lib' ]
  gem.version       = Clickhouse::VERSION
  gem.licenses      = [ 'MIT' ]

  gem.add_dependency 'bundler', '>= 1.13.4'
  gem.add_dependency 'faraday'
  gem.add_dependency 'pond'
  gem.add_dependency 'activesupport', '>= 3.2.22'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'dotenv'
  gem.add_development_dependency 'codeclimate-test-reporter'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'minitest'
  gem.add_development_dependency 'mocha'
end
