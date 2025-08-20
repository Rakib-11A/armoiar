class AddShippingMethodIdFieldToShipments < ActiveRecord::Migration[8.0]
  def change
    add_column :shipments, :shipping_method_id, :integer
  end
end
