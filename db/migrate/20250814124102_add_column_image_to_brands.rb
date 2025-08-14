class AddColumnImageToBrands < ActiveRecord::Migration[8.0]
  def change
    add_column :admin_brands, :image, :string
  end
end
