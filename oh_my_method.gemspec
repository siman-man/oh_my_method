# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oh_my_method/version'

Gem::Specification.new do |spec|
  spec.name          = "oh_my_method"
  spec.version       = OhMyMethod::VERSION
  spec.authors       = ["siman-man"]
  spec.email         = ["k128585@ie.u-ryukyu.ac.jp"]
  spec.summary       = %q{Collection of we method.}
  spec.description   = %q{Collection of we method.}
  spec.homepage      = "https://github.com/siman-man/oh_my_method"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
