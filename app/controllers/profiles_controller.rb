class ProfilesController < ApplicationController
  def edit
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to profil_path, notice: "Votre profil a bien été mis à jour"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :description, :preferences, :phone_number, :photo)
  end
end
