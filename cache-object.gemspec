# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cache/object/version'

Gem::Specification.new do |spec|
  spec.name          = 'cache-object'
  spec.version       = Cache::Object::VERSION
  spec.authors       = ['Matt Camuto', 'Paul Henry', 'Konstantin Gredeskoul', 'Eric Saxby', 'Siyamed Sinir', 'Server Cimen']
  spec.email         = ['dev@wanelo.com', 'kigster@gmail.com']
  spec.summary       = %q{Cache ActiveRecord objects either by ID or by any other lookup field.}
  spec.description   = %q{Cache ActiveRecord objects either by ID or by any other lookup field.}
  spec.homepage      = 'https://github.com/wanelo/cache-object'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', ['>= 3.0']
  spec.add_dependency 'ruby-usdt'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake'

  spec.add_development_dependency 'rspec', '>= 3.0'
  spec.add_development_dependency 'rspec-collection_matchers', '>= 1.0'
  spec.add_development_dependency 'rspec-its', '>= 1.0'

  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'sqlite3'
end
