class CreateOrders < ActiveRecord::Migration[8.0]
  def change
    create_table :orders do |t|
      t.string :number
      t.decimal :item_total, default: 0
      t.decimal :total, default: 0
      t.string :state
      t.decimal :adjustment_total, default: 0
      t.integer :user_id
      t.datetime :completed_at
      t.integer :ship_address_id
      t.decimal :payment_total, default: 0
      t.string :shipment_state
      t.string :payment_state
      t.string :email
      t.string :currency
      t.string :created_by_id
      t.decimal :shipment_total, default: 0
      t.decimal :promo_total, default: 0
      t.integer :item_count
      t.integer :approver_id
      t.datetime :approved_at
      t.boolean :confirmation_delivered
      t.string :guest_token
      t.datetime :canceled_at
      t.integer :canceler_id
      t.integer :store_id
      t.date :shipment_date
      t.integer :shipment_progress, default: 0
      t.datetime :shipped_at

      t.timestamps
    end
  end
end
