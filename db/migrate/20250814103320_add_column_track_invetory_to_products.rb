class AddColumnTrackInvetoryToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column_default :products, :track_inventory, :boolean, from: nill, to: true
  end
end
