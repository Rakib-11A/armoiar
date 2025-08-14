class CreateTrackings < ActiveRecord::Migration[8.0]
  def change
    create_table :trackings do |t|
      t.text :comment
      t.integer :user_id
      t.integer :shipment_id

      t.timestamps null: false
    end
  end
end
