class AddCouponIdToOrders < ActiveRecord::Migration[8.0]
  def change
    add_column :orders, :coupon_id, :integer
  end
end
