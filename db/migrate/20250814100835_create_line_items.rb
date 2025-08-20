class CreateLineItems < ActiveRecord::Migration[8.0]
  def change
    create_table :line_items do |t|
      t.integer :variant_id
      t.integer :order_id
      t.integer :quantity
      t.decimal :price, default: 0, precision: 22, scale: 6
      t.decimal :cost_price, default: 0, precision: 22, scale: 6
      t.string :currency
      t.decimal :adjustment_total, default: 0
      t.decimal :promo_total, default: 0
      t.string :size

      t.timestamps
    end
  end
end
