class AddShipAddressToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :ship_address_id, :integer
  end
end
