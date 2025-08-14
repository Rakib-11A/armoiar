class AddCollectionPointToOrders < ActiveRecord::Migration[8.0]
  def change
    add_column :orders, :collection_point, :string
  end
end
