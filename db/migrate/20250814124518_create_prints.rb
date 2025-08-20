class CreatePrints < ActiveRecord::Migration[8.0]
  def change
    create_table :prints do |t|
      t.timestamps
    end
  end
end
