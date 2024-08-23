class TravellerRide < ApplicationRecord
  belongs_to :user
  belongs_to :ride
  has_one :sloop, through: :ride

  validates :validate_status, inclusion: { in: ["pending", "accepted", "refused"] }
  scope :accepted, -> { where(validate_status: "accepted") }
end
