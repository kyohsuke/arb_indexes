# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arb_indexes/version'

Gem::Specification.new do |gem|
  gem.name          = 'arb_indexes'
  gem.version       = ArbIndexes::VERSION
  gem.authors       = ['Keisuke Kawahara']
  gem.email         = ['kyohsuke@conafie.jp']
  gem.description   = %q{get indexes from Model}
  gem.summary       = %q{get indexes from Model}
  gem.homepage      = 'https://github.com/kyohsuke/arb_indexes'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_development_dependency 'activerecord', '>= 3.0.0'
end
