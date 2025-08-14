class AddTokensFieldToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :tokens, :text
  end
end
