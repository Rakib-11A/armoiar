class AddFieldsToHomeSlider < ActiveRecord::Migration[8.0]
  def change
    add_column :home_sliders, :title, :string
    add_column :home_sliders, :sub_title, :string
    add_column :home_sliders, :link, :string
  end
end
