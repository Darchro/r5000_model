# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'r5000_model/version'

Gem::Specification.new do |spec|
  spec.name          = "r5000_model"
  spec.version       = R5000Model::VERSION
  spec.authors       = ["zoujinfu"]
  spec.email         = ["zoujinfu0608@163.com"]

  spec.summary       = %q{model and services for r5000 app.}
  spec.description   = %q{model and services for r5000 app.}
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activesupport"
  spec.add_runtime_dependency "activerecord"
  spec.add_runtime_dependency "bcrypt"
  spec.add_development_dependency "devise"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
