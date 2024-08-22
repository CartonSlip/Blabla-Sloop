class RidesController < ApplicationController

  def index
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
    @sloops = current_user.sloops
    @capacity_by_sloop = @sloops.pluck(:id, :capacity).to_h
  end

  def create
    @rides = Ride.new(ride_params)
    @rides.user = current_user
    # penser à installer dans le form le defaut capacity egale au capacity du sloop
    if @sloop.save
      redirect_to rides_path, notice: "Votre ride a bien été ajoutée"
    else
      @sloops = current_user.sloops
      @capacity_by_sloop = @sloops.pluck(:id, :capacity).to_h
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @ride = Ride.find(params[:id])
    # prevoir de montrer tout les voyageurs validés
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
    params.require(:ride).permit(:start_date, :end_date, :details, :capacity, :start_port, :end_port, sloop: [:id])
  end

end
