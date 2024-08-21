class RideRequestsController < ApplicationController
  def index
    @riderequests = RideRequest.all
  end

  def new
    @riderequest = RideRequest.new
  end

  def create
    @riderequest = RideRequest.new(riderequest_params)
    @riderequest.user = current_user

    if @riderequest.save
      # redirect_to profil_path(@current_user)
      redirect_to riderequests_path, notice: "Votre ridesrequest a bien été ajoutée"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def riderequest_params
    params.require(:ride_request).permit(:details, :start_date, :end_date, :start_port, :end_port)
  end
end
