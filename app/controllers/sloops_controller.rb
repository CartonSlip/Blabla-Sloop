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

  def favorite
    @sloop = Sloop.find(params[:id])
    current_user.favorited?(@sloop) ? current_user.unfavorite(@sloop) : current_user.favorite(@sloop)

    respond_to do |format|
      format.html { redirect_to sloop_path(@sloop) }
      format.turbo_stream { render turbo_stream: turbo_stream.replace(@sloop, partial: "shared/favorite_btn" , locals: { sloop: @sloop}) }
    end

  end

  private

  def sloop_params
    params.require(:sloop).permit(:name, :capacity, :description, :category, photos: [])
  end
end
