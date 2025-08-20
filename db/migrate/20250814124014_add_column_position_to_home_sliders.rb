class AddColumnPositionToHomeSliders < ActiveRecord::Migration[8.0]
  def change
    add_column :home_sliders, :position, :integer, default: 1
  end
end
