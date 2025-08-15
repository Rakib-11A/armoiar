# Be sure to restart your server when you modify this file.

# Version of your assets; change this to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
Rails.application.config.assets.paths << Rails.root.join('node_modules')
# Rails.application.config.assets.paths << Emoji.images_path # optional

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets are already added.
Rails.application.config.assets.precompile += %w[
  admin.css
  dashboard.scss
  css/animatee.css
  css/animatee.min.css
  css/bootstrap-dropdownhover.css
  css/bootstrap-dropdownhover.min.css
  admin.js
  dashboard.js
  js/bootstrap-dropdownhover.js
  js/bootstrap-dropdownhover.min.js
  jQuery.print.js
  ckeditor/config.js
]

# Optional: precompile entire ckeditor folder if needed
# Rails.application.config.assets.precompile += %w[ckeditor/*]
