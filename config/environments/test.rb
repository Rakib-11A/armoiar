# frozen_string_literal: true

Rails.application.configure do
  # The test environment is used exclusively to run your application's
  # test suite. Your test database is "scratch space" and is wiped between test runs.

  # Reloading code is not necessary in tests.
  config.cache_classes = true
  config.enable_reloading = false

  # Eager loading is usually not needed for single test runs.
  # Enable it in CI to catch eager loading issues.
  config.eager_load = ENV["CI"].present? || false

  # Configure public file server for tests with cache-control for performance.
  config.public_file_server.enabled = true
  config.public_file_server.headers = { "Cache-Control" => "public, max-age=#{1.hour.to_i}" }

  # Show full error reports.
  config.consider_all_requests_local = true

  # Disable caching in test environment.
  config.action_controller.perform_caching = false
  config.cache_store = :null_store

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment.
  config.action_controller.allow_forgery_protection = false

  # Store uploaded files on the local file system in a temporary directory.
  config.active_storage.service = :test

  # Action Mailer settings: do not deliver real emails.
  config.action_mailer.delivery_method = :test
  config.action_mailer.perform_caching = false
  config.action_mailer.default_url_options = { host: "example.com" }

  # Print deprecation notices to stderr.
  config.active_support.deprecation = :stderr

  # Raise error when a before_action's only/except options reference missing actions.
  config.action_controller.raise_on_missing_callback_actions = true

  # Optional: Raise errors for missing translations
  # config.i18n.raise_on_missing_translations = true

  # Optional: Annotate rendered view with filenames
  # config.action_view.annotate_rendered_view_with_filenames = true
end
