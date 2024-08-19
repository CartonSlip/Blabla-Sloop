class Ride < ApplicationRecord
  belongs_to :sloop
  has_many :traveller_rides 
end
