class Ride < ApplicationRecord
  belongs_to :sloop
  has_many :traveller_rides
  has_many :users, through: :traveller_rides
  validates :start_date, :end_date, presence: true
  validates :start_port, :end_port, presence: true
  validates :details, presence: true

  geocoded_by :start_port, latitude: :start_port_latitude, longitude: :start_port_longitude

  after_validation :geocode_start_port, if: :will_save_change_to_start_port?
  after_validation :geocode_end_port, if: :will_save_change_to_end_port?

  private

  def geocode_start_port
    geocode
  end

  # Méthode pour géocoder le port d'arrivée
  def geocode_end_port
    return if end_port.blank?

    results = Geocoder.search(end_port)
    self.end_port_latitude, self.end_port_longitude = results.first.coordinates
  end
end
