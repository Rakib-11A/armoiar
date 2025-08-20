class AddMinStockToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :min_stock, :integer, default: 0
  end
end
