# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby-box/mock/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-box-mock"
  spec.version       = RubyBox::Mock::VERSION
  spec.authors       = ["Tristan Peralta"]
  spec.email         = ["tristanperalta@gmail.com"]
  spec.summary       = %q{A library to test Box API without requesting to their servers}
  spec.description   = %q{A library to test Box API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "webmock", "1.20.4"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.1.0"
end
