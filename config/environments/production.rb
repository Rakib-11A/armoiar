# frozen_string_literal: true

require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here take precedence over those in config/application.rb.

  # Code is not reloaded between requests.
  config.cache_classes = true
  config.enable_reloading = false
  config.eager_load = true

  # Full error reports are disabled.
  config.consider_all_requests_local = false

  # Enable caching and set cache headers
  config.action_controller.perform_caching = true
  config.cache_store = :solid_cache_store
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present? || true
  config.public_file_server.headers = { "Cache-Control" => "public, max-age=#{1.year.to_i}" }

  # Assets settings
  config.assets.compile = false
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass
  config.action_controller.asset_host = 'https://armoiar.com'

  # Active Storage configuration
  config.active_storage.service = :local

  # SSL and security
  config.assume_ssl = true
  config.force_ssl = true
  # config.ssl_options = { redirect: { exclude: ->(request) { request.path == "/up" } } }

  # Logging
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "debug").to_sym
  config.log_tags  = [:request_id]
  config.log_formatter = ::Logger::Formatter.new

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  else
    config.logger ||= ActiveSupport::TaggedLogging.new(Logger.new("log/production.log"))
  end

  # Silence healthcheck logs
  config.silence_healthcheck_path = "/up"

  # I18n fallback
  config.i18n.fallbacks = true

  # Deprecation notifications
  config.active_support.report_deprecations = false
  config.active_support.deprecation = :notify

  # Active Record
  config.active_record.dump_schema_after_migration = false
  config.active_record.attributes_for_inspect = [:id]

  # Queue backend
  config.active_job.queue_adapter = :solid_queue
  config.solid_queue.connects_to = { database: { writing: :queue } }

  # Mailer settings
  config.action_mailer.perform_caching = false
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    user_name: "rakibhasan@gmail.com", # keep login as is
    password: "rakibhasan",             # keep login as is
    authentication: "plain"
  }
  config.action_mailer.default_url_options = { host: 'armoiar.com' }

  # Force use of tagged logging for request IDs
  config.log_tags = [ :request_id ]

  # Optional: DNS rebinding protection or allowed hosts
  # config.hosts = ["armoiar.com", /.*\.armoiar\.com/]
  # config.host_authorization = { exclude: ->(request) { request.path == "/up" } }
end
