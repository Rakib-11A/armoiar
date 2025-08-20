class AddIsCheckedToContacts < ActiveRecord::Migration[8.0]
  def change
    add_column :contacts, :is_checked, :boolean, default: false
    add_reference :contacts, :user, foreign_key: true
  end
end
