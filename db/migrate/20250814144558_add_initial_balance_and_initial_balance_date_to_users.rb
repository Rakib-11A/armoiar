class AddInitialBalanceAndInitialBalanceDateToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :initial_balance, :float
    add_column :users, :initial_balance_date, :date
  end
end
