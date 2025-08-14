class CreateRelatedProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :related_products do |t|
      t.integer :product_id
      t.string :relative_id

      t.timestamps
    end
  end
end
