# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fancy_cards/version'

Gem::Specification.new do |spec|
  spec.name          = "fancy_cards"
  spec.version       = FancyCards::VERSION
  spec.authors       = ["benji"]
  spec.email         = ["benj_cous@hotmail.com"]

  spec.summary       = %q{Create fancy cards to create a nice overview of information.}
  spec.homepage      = "https://github.com/becousae/fancy_cards"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "purecss-rails", '~> 0.6.0'
end
