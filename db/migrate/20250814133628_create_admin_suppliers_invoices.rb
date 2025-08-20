class CreateAdminSuppliersInvoices < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_suppliers_invoices do |t|
      t.string :no
      t.decimal :amount
      t.date :date
      t.float :transport_cost
      t.boolean :is_complete, default: false
      t.date :expected_delivary
      t.text :instruction
      t.boolean :is_received, default: false
      t.date :receive_date
      t.text :note
      t.boolean :is_order, default: false
      t.string :order_state
      t.integer :supplier_id
      t.integer :issued_by_id
      t.integer :received_by_id
      t.references :stock_location, foreign_key: true

      t.timestamps
    end
  end
end
