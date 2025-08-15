# frozen_string_literal: true

require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Armoiar
  class Application < Rails::Application
    # Initialize configuration defaults for Rails 8.0
    config.load_defaults 8.0

    # Autoload paths for lib
    config.autoload_paths << Rails.root.join("lib")

    # Ignore non-Ruby files in lib subdirectories
    # Add more directories if needed, like 'templates', 'generators', etc.
    config.autoload_lib(ignore: %w[assets tasks])

    # ActiveRecord configuration
    config.active_record.belongs_to_required_by_default = false

    # Middleware: Rack::Cors for API requests
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '/api/*', headers: :any, methods: %i[get post options]
      end
    end

    # Generators configuration
    # Don't generate system test files
    config.generators.system_tests = nil

    # Additional configuration for the application, engines, and railties
    # Time zone example:
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
