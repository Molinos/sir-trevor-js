# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-sir-trevor-js/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-sir-trevor-js"
  spec.version       = RailsAssetsSirTrevorJs::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = ""
  spec.summary       = ""
  spec.homepage      = "https://github.com/madebymany/sir-trevor-js"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-es5-shim", "~> 4.0.3"
  spec.add_dependency "rails-assets-es6-shim", "~> 0.21.0"
  spec.add_dependency "rails-assets-Eventable", "~> 1.0.1"
  spec.add_dependency "rails-assets-jquery", "~> 1.9.1"

    spec.post_install_message = "This component doesn't define main assets in bower.json.\nPlease open new pull request in component's repository:\nhttps://github.com/madebymany/sir-trevor-js"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
