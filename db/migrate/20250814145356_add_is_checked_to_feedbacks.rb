class AddIsCheckedToFeedbacks < ActiveRecord::Migration[8.0]
  def change
    add_column :feedbacks, :is_checked, :boolean
    add_reference :feedbacks, :user, foreign_key: true
  end
end
