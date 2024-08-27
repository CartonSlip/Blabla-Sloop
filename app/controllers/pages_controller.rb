class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @rides = Ride.all.order(created_at: :desc).limit(3)
    @rides_requests = RideRequest.all.order(created_at: :desc).limit(3)
  end

  def profil
    @favorite_sloops = current_user.favorites_by_type('Sloop').map { |fav| fav.favoritable }
  end
end
