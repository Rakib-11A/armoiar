# frozen_string_literal: true

Devise.setup do |config|
  # Mailer configuration
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  # ORM configuration
  require 'devise/orm/active_record'

  # Authentication keys
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]

  # Session storage
  config.skip_session_storage = [:http_auth]

  # Password hashing
  config.stretches = Rails.env.test? ? 1 : 12

  # Account reconfirmation
  config.reconfirmable = true

  # Remember me
  config.expire_all_remember_me_on_sign_out = true

  # Password length and email validation
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  # Password reset
  config.reset_password_within = 6.hours

  # Sign out method
  config.sign_out_via = :delete

  # Hotwire/Turbo compatible responder status codes
  config.responder.error_status = :unprocessable_entity
  config.responder.redirect_status = :see_other
end
