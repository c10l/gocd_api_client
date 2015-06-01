# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gocd_api_client/version'

Gem::Specification.new do |spec|
  spec.name          = "gocd_api_client"
  spec.version       = GocdApiClient::VERSION
  spec.authors       = ["Cassiano Leal"]
  spec.email         = ["cassianoleal@gmail.com"]
  spec.summary       = %q{Ruby client library to interact with ThoughtWorks Go's API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "guard", "~> 2.12"
  spec.add_development_dependency "guard-rspec", "~> 4.5"
  spec.add_development_dependency "ruby_gntp", "~> 0.3"
end
