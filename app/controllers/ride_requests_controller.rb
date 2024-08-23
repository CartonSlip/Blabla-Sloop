class RideRequestsController < ApplicationController
  def index
    @riderequests = RideRequest.all

    if params[:query].present?
      sql_subquery = "start_port ILIKE :query OR end_port ILIKE :query"
      @riderequests = @riderequests.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def new
    @riderequest = RideRequest.new
  end

  def create
    @riderequest = RideRequest.new(riderequest_params)
    @riderequest.user = current_user

    if @riderequest.save
      # redirect_to profil_path(@current_user)
      redirect_to ride_requests_path, notice: "Votre ridesrequest a bien été ajoutée"
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
        # info_window_html: render_to_string(partial: "info_window", locals: { riderequest: @riderequest }),
        marker_html: render_to_string(partial: "marker")
      },
      {
        lat: @riderequest.end_port_latitude,
        lng: @riderequest.end_port_longitude,
        # info_window_html: render_to_string(partial: "info_window", locals: { riderequest: @riderequest }),
        marker_html: render_to_string(partial: "marker")
      }
    ]
  end

  private

  def riderequest_params
    params.require(:ride_request).permit(:details, :start_date, :end_date, :start_port, :end_port)
  end
end
