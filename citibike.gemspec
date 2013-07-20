# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'citibike/version'

Gem::Specification.new do |spec|
  spec.name          = "citibike"
  spec.version       = Citibike::VERSION
  spec.authors       = ["John Bunting"]
  spec.email         = ["codingjester@gmail.com"]
  spec.description   = %q{An easy to use (unofficial) interface to the Citibike API}
  spec.summary       = %q{An easy to use (unofficial) interface to the Citibike API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_dependency 'faraday', '>= 0.8'
  spec.add_dependency 'faraday_middleware', '>= 0.8'
  spec.add_dependency 'json'
end
