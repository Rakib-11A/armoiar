# frozen_string_literal: true

# Use this hook to configure CKEditor in Rails 8
Ckeditor.setup do |config|
  # Load ORM. Supports :active_record (default), :mongo_mapper, :mongoid.
  require 'ckeditor/orm/active_record'

  # Optional: Restrict allowed upload file types
  # config.image_file_types      = %w(jpg jpeg png gif tiff) # nil or [] for all types
  # config.flash_file_types      = %w(swf)                  # nil or [] for all types
  # config.attachment_file_types = %w(doc docx xls odt ods pdf rar zip tar tar.gz swf) # nil or [] for all types

  # Authorization
  # config.authorize_with :cancancan # or your own custom method

  # Controller parent
  # config.parent_controller = 'ApplicationController' # default

  # Asset models
  # config.picture_model         = Ckeditor::Picture
  # config.attachment_file_model = Ckeditor::AttachmentFile

  # Pagination
  # config.default_per_page = 24

  # Asset path (optional)
  # config.asset_path = 'http://www.example.com/assets/ckeditor/'

  # CKEditor CDN (optional)
  # config.cdn_url = '//cdn.ckeditor.com/4.11.3/standard/ckeditor.js'

  # JS config URL (used when CDN enabled)
  # config.js_config_url = 'ckeditor/config.js'
end
