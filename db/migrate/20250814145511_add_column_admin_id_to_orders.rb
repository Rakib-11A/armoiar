class AddColumnAdminIdToOrders < ActiveRecord::Migration[8.0]
  def change
    add_column :orders, :admin_id, :integer
  end
end
