class CreateAdminSuppliersInvoicesAttachments < ActiveRecord::Migration[8.0]
  def change
    create_table :admin_suppliers_invoices_attachments do |t|
      t.integer :invoice_id
      t.string :picture

      t.timestamps null: false
    end
  end
end
