class RidesController < ApplicationController
  def index
    @rides = Ride.all

    if params[:query].present?
      sql_subquery = "start_port ILIKE :query OR end_port ILIKE :query"
      @rides = @rides.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def new
    @sloops = current_user.sloops
    @capacity_by_sloop = @sloops.pluck(:id, :capacity).to_h
    if params[:ride_request_id].present?
      @ride_request = RideRequest.find(params[:ride_request_id])

      @ride = Ride.new(
        start_date: @ride_request.start_date,
        start_port: @ride_request.start_port,
        end_date: @ride_request.end_date,
        end_port: @ride_request.end_port,
        distance: @ride_request.distance,
        details: @ride_request.details,
      )

      render :new_with_ride_request
    else
      @ride = Ride.new

      render :new
    end
  end

  def create
    @ride = Ride.new(ride_params)

    if @ride.save
      redirect_to rides_path, notice: "Votre ride a bien été ajoutée"
      # refaire un if, puis recuperer la riderequest.
      if params[:ride_request_id].present?
        @ride_request = RideRequest.find(params[:ride_request_id])

        # PUis creer la traveler ride, en statut accepted,
        @traveller_ride = TravellerRide.create!(
          user: @ride_request.user,
          ride: @ride,
          validate_status: "accepted"
        )
        # puis suprimer la ride request
        @ride_request.destroy!
      end
    else
      @sloops = current_user.sloops
      @capacity_by_sloop = @sloops.pluck(:id, :capacity).to_h
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @ride = Ride.find(params[:id])
    # prevoir de montrer tout les voyageurs validés
    @markers = [
      {
        lat: @ride.start_port_latitude,
        lng: @ride.start_port_longitude,
        # info_window_html: render_to_string(partial: "info_window", locals: { riderequest: @riderequest }),
        marker_html: render_to_string(partial: "shared/marker")
      },
      {
        lat: @ride.end_port_latitude,
        lng: @ride.end_port_longitude,
        # info_window_html: render_to_string(partial: "info_window", locals: { riderequest: @riderequest }),
        marker_html: render_to_string(partial: "shared/marker")
      }
    ]
    @traveller_ride = TravellerRide.new
  end

  def edit
    @ride = Ride.find(params[:id])
  end

  def update
    @ride = Ride.find(params[:id])
    if @ride.update(ride_params)
      redirect_to ride_path(@ride)
    else
      render :edit
    end
  end

  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy
    redirect_to profil_path, status: :see_other
  end

  private

  def ride_params
    params.require(:ride).permit(:start_date, :end_date, :details, :capacity, :start_port, :end_port, :sloop_id)
  end

end
