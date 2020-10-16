# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pixabay/version'

Gem::Specification.new do |spec|
  spec.name          = "pixabay-api"
  spec.version       = Pixabay::VERSION
  spec.authors       = ["Surim Kim"]
  spec.email         = ["kimsuelim@gmail.com"]

  spec.summary       = %q{A ruby wrapper for the pixabay API}
  spec.description   = %q{A ruby wrapper for the pixabay API}
  spec.homepage      = "https://github.com/kimsuelim/pixabay"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty", "~> 0.16"

  spec.add_development_dependency "bundler",  "~> 1.11"
  spec.add_development_dependency "rake",     "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop",  "~> 0.49.1"
end
