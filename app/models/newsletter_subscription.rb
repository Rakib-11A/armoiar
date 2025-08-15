# == Schema Information
#
# Table name: newsletter_subscriptions
#
#  id         :integer          not null, primary key
#  email      :string
#  active     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class NewsletterSubscription < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  after_create :send_notification

  def send_notification
    NotificationMailer.send_subscription_notification(self.email).deliver_now
  end
end
