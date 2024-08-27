class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :ride
  has_many :user_messages, dependent: :destroy

  def skipper
    User.find(skipper_id)
  end
end
