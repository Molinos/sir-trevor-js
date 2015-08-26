require "rails-assets-sir-trevor-js/version"

require "rails-assets-es5-shim"
require "rails-assets-es6-shim"
require "rails-assets-Eventable"
require "rails-assets-jquery"

module RailsAssetsSirTrevorJs

  def self.gem_path
    Pathname(File.realpath(__FILE__)).join('../..')
  end

  def self.gem_spec
    Gem::Specification::load(
      gem_path.join("rails-assets-sir-trevor-js.gemspec").to_s
    )
  end

  def self.load_paths
    gem_path.join('app/assets').each_child.to_a
  end

  def self.dependencies
    [
      RailsAssetsEs5Shim,
      RailsAssetsEs6Shim,
      RailsAssetsEventable,
      RailsAssetsJquery
    ]
  end

  if defined?(Rails)
    class Engine < ::Rails::Engine
      # Rails -> use app/assets directory.
    end
  end

end

class RailsAssets
  @components ||= []

  class << self
    attr_accessor :components

    def load_paths
      components.flat_map(&:load_paths)
    end
  end
end

RailsAssets.components << RailsAssetsSirTrevorJs
