class Review < ApplicationRecord
  belongs_to :receiver, class_name: 'User', foreign_key: 'receiver_id'
  belongs_to :poster, class_name: 'User', foreign_key: 'poster_id'
  validates :comment, presence: true
  validates :rating, presence: true
end
