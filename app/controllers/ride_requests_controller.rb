class RideRequestsController < ApplicationController

  def index
    @riderequests = RideRequest.all

    if params[:query].present?
      sql_subquery = "start_port ILIKE :query OR end_port ILIKE :query"
      @riderequests = @riderequests.where(sql_subquery, query: "%#{params[:query]}%")
    end

    @markers = @riderequests.geocoded.map do |riderequest|
      [
        {
          lat: riderequest.start_port_latitude,
          lng: riderequest.start_port_longitude,
        },
        {
          lat: riderequest.end_port_latitude,
          lng: riderequest.end_port_longitude,
        }
      ]
    end
  end

  def new
    @riderequest = RideRequest.new
  end

  def create
    @riderequest = RideRequest.new(riderequest_params)
    @riderequest.user = current_user

    if @riderequest.save*
      redirect_to dashboard_path, notice: "Votre demande de voyage a bien été ajoutée"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @riderequest = RideRequest.find(params[:id])

    @markers = [
      {
        lat: @riderequest.start_port_latitude,
        lng: @riderequest.start_port_longitude,
        info_window_html: render_to_string(partial: "shared/startrequestport"),
        marker_html: render_to_string(partial: "shared/markerstart")
      },
      {
        lat: @riderequest.end_port_latitude,
        lng: @riderequest.end_port_longitude,
        info_window_html: render_to_string(partial: "shared/endrequestport"),
        marker_html: render_to_string(partial: "shared/markerend")
      }
    ]
    @start_port_coordinates = [@riderequest.start_port_latitude, @riderequest.start_port_longitude]
    @end_port_coordinates = [@riderequest.end_port_latitude, @riderequest.end_port_longitude]
  end

  private

  def riderequest_params
    params.require(:ride_request).permit(:details, :start_date, :end_date, :start_port, :end_port)
  end
end
