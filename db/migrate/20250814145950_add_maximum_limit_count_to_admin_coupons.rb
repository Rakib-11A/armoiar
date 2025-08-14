class AddMaximumLimitCountToAdminCoupons < ActiveRecord::Migration[8.0]
  def change
    add_column :admin_coupons, :maximum_limit_count, :integer, default: 0
  end
end
