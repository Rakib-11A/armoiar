source "https://rubygems.org"

ruby "3.3.5" # or whatever matches your Rails 8 environment

# ===================
# Core Rails / Server
# ===================
gem "rails", "~> 8.0.2"
gem "pg", "~> 1.5"
gem "puma", ">= 5.0"
gem "bootsnap", require: false
gem "propshaft"

# ===================
# Asset / Frontend
# ===================
# gem "jsbundling-rails"
gem "cssbundling-rails"
# gem "turbo-rails"
# gem "stimulus-rails"
gem "jquery-rails"
gem "jquery-ui-rails"
gem "bootstrap", "~> 5.3" # Replaces bootstrap-sass
gem "bootstrap-sass", "~> 3.4.1"
gem "bootstrap-datepicker-rails"
gem "bootstrap4-kaminari-views"
gem "select2-rails"
gem "social-share-button"
gem "lazyload-rails"

# ===================
# Authentication / Authorization
# ===================
gem "devise", "~> 4.9"
gem "devise_token_auth"
gem "cancancan", "~> 3.5" # replaces old 'cancan'

# ===================
# File Uploads / Images
# ===================
gem "carrierwave", "~> 3.0"
gem "mini_magick"
gem "rmagick"

# ===================
# Rich Text / Editor
# ===================
gem "ckeditor", github: "galetahub/ckeditor"

# ===================
# Pagination
# ===================
gem "kaminari", "~> 1.2"

# ===================
# Utilities / Extras
# ===================
gem "friendly_id", "~> 5.5"
gem "faker"
# gem "annotate", "~> 3.2"


gem "paypal-sdk-merchant"
gem "barby"          # barcode generator
gem "chunky_png"     # barcode PNG support
gem "rack-cors", require: "rack/cors"

# ===================
# JSON / API
# ===================
gem "jbuilder"

# ===================
# Background Jobs / Caching / Queues (Rails 8 features)
# ===================
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# ===================
# Deployment
# ===================
gem "kamal", require: false
gem "thruster", require: false

# ===================
# Development & Testing
# ===================
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "byebug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "web-console"
  gem "listen", "~> 3.8"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.1"
  gem "letter_opener"
  gem "capistrano", require: false
  gem "capistrano-rails", require: false
  gem "capistrano-rvm"
  gem "capistrano-bundler"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

# ===================
# OS-specific
# ===================
gem "tzinfo-data", platforms: %i[windows jruby]

gem "sassc-rails"   # SCSS/SASS compiler
gem "sprockets-rails"
# gem 'sprockets', '~> 4.0'

gem "turbolinks", "~> 5"
gem "rails-ujs"
gem "actioncable", "~> 8.0.2"