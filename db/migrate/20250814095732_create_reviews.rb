class CreateReviews < ActiveRecord::Migration[8.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :rating
      t.text :text
      t.integer :product_id
      t.integer :user_id
      t.string :email
      t.boolean :is_approved, default: false

      t.timestamps
    end
  end
end
