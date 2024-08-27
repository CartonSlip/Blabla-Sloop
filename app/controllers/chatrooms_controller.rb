class ChatroomsController < ApplicationController
  def create
    @ride = Ride.find(params[:ride_id])
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.ride = @ride
    @chatroom.user = current_user
    if @chatroom.save
      redirect_to @ride
    else
      render "rides/show"
    end
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @user_message = UserMessage.new
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:date)
  end
end
