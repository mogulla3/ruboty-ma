# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/ma/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-ma"
  spec.version       = Ruboty::Ma::VERSION
  spec.authors       = ["mogulla3"]
  spec.email         = ["hs.iarn3@gmail.com"]
  spec.summary       = "A Ruboty plug-in to generate result of morphological analysis from input string"
  spec.description   = "A Ruboty plug-in to generate result of morphological analysis from input string"
  spec.homepage      = "https://github.com/mogulla3/ruboty-ma"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"
  spec.add_dependency "multi_xml"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
