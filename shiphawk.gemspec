# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shiphawk/version'

Gem::Specification.new do |spec|
  spec.name           = 'shiphawk'
  spec.version        = ShipHawk::VERSION
  spec.date           = Time.now.strftime("%Y-%m-%d")
  spec.summary        = 'ShipHawk Ruby Client Library'
  spec.description    = %q{ShipHawk, technology that delivers. See https://shiphawk.com for details.}
  spec.authors        = ['Alex Hawkins']
  spec.email          = 'alex.hawkins@shiphawk.com'
  spec.homepage       = 'https://github.com/ShipHawk/shiphawk-ruby'
  spec.license        = 'MIT'

  spec.files          = `git ls-files -z`.split("\x0")
  spec.executables    = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files     = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths  = ['lib']

  spec.add_dependency 'rest-client', '~> 1.4'
  spec.add_dependency 'multi_json', '>= 1.3.0'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 2.13'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'pry'
end
