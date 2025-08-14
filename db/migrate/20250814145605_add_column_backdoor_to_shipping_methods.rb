class AddColumnBackdoorToShippingMethods < ActiveRecord::Migration[8.0]
  def change
    add_column :shipping_methods, :backdoor_only, :boolean, default: false
  end
end
