class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :traveller_rides
  has_many :ride_requests
  has_many :bookmarks
  has_many :sloops
  has_many :reviews
  has_one_attached :photo
end
