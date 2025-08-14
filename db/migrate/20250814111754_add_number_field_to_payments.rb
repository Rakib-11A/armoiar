class AddNumberFieldToPayments < ActiveRecord::Migration[8.0]
  def change
    add_column :payments, :number, :string
  end
end
