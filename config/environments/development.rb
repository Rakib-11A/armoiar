# frozen_string_literal: true

require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # Reload application code on every request (slower, but perfect for development)
  config.cache_classes = false
  config.enable_reloading = true
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable server timing
  config.server_timing = true

  # Caching configuration
  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true
    config.cache_store = :memory_store
    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (config/storage.yml)
  config.active_storage.service = :local

  # Mailer settings
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_caching = false

  # Default URL options
  config.action_mailer.default_url_options = { host: "localhost", port: 3000 }

  # Letter Opener for local email preview
  config.action_mailer.delivery_method = :letter_opener
  config.action_mailer.perform_deliveries = true

  # SMTP settings (optional for testing login/email)
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "gmail.com",
    user_name: "rakibhasan@gmail.com", # keep login as is
    password: "rakibhasan",             # keep login as is
    authentication: "plain"
  }

  # Deprecation notices logged
  config.active_support.deprecation = :log

  # Raise an error if there are pending migrations
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries
  config.active_record.verbose_query_logs = true

  # Debug mode disables asset concatenation/preprocessing
  config.assets.debug = true
  config.assets.quiet = true

  # Serve static files
  config.action_controller.asset_host = "http://localhost:3000"
  config.action_mailer.asset_host = "http://localhost:3000"
  config.serve_static_files = true
  config.serve_static_assets = true

  # Raise error when a before_action references missing actions
  config.action_controller.raise_on_missing_callback_actions = true

  # Annotate rendered views with filenames
  config.action_view.annotate_rendered_view_with_filenames = true

  # File watcher for async code updates
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
end
