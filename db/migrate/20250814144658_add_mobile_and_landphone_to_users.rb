class AddMobileAndLandphoneToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :mobile, :string
    add_column :users, :landphone, :string
  end
end
