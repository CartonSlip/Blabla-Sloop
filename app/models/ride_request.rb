class RideRequest < ApplicationRecord
  belongs_to :user
  validates :start_date, :end_date, presence: true
  validates :start_port, :end_port, presence: true
  validates :details, presence: true
end
