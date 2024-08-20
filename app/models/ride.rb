class Ride < ApplicationRecord
  belongs_to :sloop
  has_many :traveller_rides
  validates :start_date, :end_date, presence: true
  validates :start_port, :end_port, presence: true
  validates :details, presence: true
end
