# == Schema Information
#
# Table name: feedbacks
#
#  id               :integer          not null, primary key
#  name             :string
#  email            :string
#  feedback_type    :string
#  message          :text
#  product_quality  :string
#  product_price    :string
#  customer_service :text
#  rate             :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  is_checked       :boolean
#  user_id          :integer
#
# Indexes
#
#  index_feedbacks_on_user_id  (user_id)
#

class Feedback < ApplicationRecord
  belongs_to :checked_by, class_name: 'User', foreign_key: 'user_id'

  def check_feedback(user)
    self.is_checked = true
    self.checked_by = user
    save!
  end
end
