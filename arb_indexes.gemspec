# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'arb_indexes'
  gem.version       = '0.0.1'
  gem.authors       = ['Keisuke Kawahara']
  gem.email         = ['kyohsuke@conafie.jp']
  gem.description   = %q{get indexes from Model}
  gem.summary       = %q{get indexes from Model}
  gem.homepage      = 'https://github.com/kyohsuke/arb_indexes'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_runtime_dependency 'activesupport', '>= 3.0.0'
end
