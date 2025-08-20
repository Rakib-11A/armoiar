class CreateAdminGalleryImages < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_gallery_images do |t|
      t.string :image
      t.integer :position, default: 1

      t.timestamps
    end
  end
end
