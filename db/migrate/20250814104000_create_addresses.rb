class CreateAddresses < ActiveRecord::Migration[8.0]
  def change
    create_table :addresses do |t|
      t.string :firstname
      t.string :lastname
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :phone
      t.string :state
      t.string :company
      t.string :country

      t.timestamps
    end
  end
end
