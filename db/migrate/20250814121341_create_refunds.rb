class CreateRefunds < ActiveRecord::Migration[8.0]
  def change
    create_table :refunds do |t|
      t.integer :payment_id
      t.decimal :amount
      t.string :reason

      t.timestamps
    end
  end
end
