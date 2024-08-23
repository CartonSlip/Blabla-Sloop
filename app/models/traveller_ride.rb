class TravellerRide < ApplicationRecord
  belongs_to :user
  belongs_to :ride
  has_one :sloop, through: :ride
end
