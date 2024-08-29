class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :ride
  has_many :user_messages, dependent: :destroy

  def skipper
    User.find(skipper_id)
  end

  def users
    # Renvoie tous les users de la chatroom du message
    [user, ride.skipper]
  end
end
