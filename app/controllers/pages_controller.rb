class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @rides = Ride.all.order(:created_at).limit(3)
    @ridesrequests = RideRequest.all.order(:created_at).limit(3)
  end

  def profil
  end
end
