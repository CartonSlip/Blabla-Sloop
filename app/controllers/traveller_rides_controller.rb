class TravellerRidesController < ApplicationController
  # Vue Provisoire pour expérimenter -
  def new
    @ride = Ride.find(params[:ride_id])
  end

  #  le bouton de demande d'embarcation inclus dans new.html.erb est fonctionnel.
  def create
    @ride = Ride.find(params[:ride_id])
    @travellerride = TravellerRide.new
    @travellerride.user = current_user
    @travellerride.ride = @ride

    if @travellerride.save
      redirect_to ride_path(@ride), notice: "Votre demande a bien été enregistrée."
    else
      redirect_to ride_path(@ride), alert: "Nous n'avons pas pu enregistrer votre demande."
    end
  end

  # Vue Provisoire pour expérimenter -
  def edit
    @travellerride = TravellerRide.find(params[:id])
  end

  #  les boutons d'acceptation/refus inclus dans edit.html.erb sont fonctionnels.
  def update
    @travellerride = TravellerRide.find(params[:id])
    # guard clause
    if current_user != @travellerride.ride.sloop.user
      flash[:alert] = "Vous n'êtes pas le propriétaire du sloop associé au trajet"
      return redirect_to ride_path(@travellerride.ride)
    end
    if @travellerride.update(travellerride_params)
      flash[:notice] = @travellerride.validate_status == "accepted" ? "Demande acceptée !" : "Demande refusée"
      redirect_to ride_path(@travellerride.ride)
    else
      redirect_to ride_path(@travellerride.ride), notice: "Nous n'avons pas pu enregistrer votre réponse."
    end
  end

  private

  def travellerride_params
    params.require(:traveller_ride).permit(:validate_status)
  end
end
