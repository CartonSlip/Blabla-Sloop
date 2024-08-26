class SloopsController < ApplicationController
  def index
    @sloops = Sloop.all
  end

  def new
    @sloop = Sloop.new
  end

  def create
    @sloop = Sloop.new(sloop_params)
    @sloop.user = current_user

    if @sloop.save
      redirect_to profil_path, notice: "Votre sloop a bien été ajoutée"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @sloop = Sloop.find(params[:id])
  end

  def edit
    @sloop = Sloop.find(params[:id])
  end

  def update
    @sloop = Sloop.find(params[:id])
    if @sloop.update(sloop_params)
      redirect_to sloop_path(@sloop)
    else
      render :edit
    end
  end

  def destroy
    @sloop = Sloop.find(params[:id])
    @sloop.destroy
    redirect_to profil_path, status: :see_other
  end

  private

  def sloop_params
    params.require(:sloop).permit(:name, :capacity, :description, :category, photos: [])
  end
end
