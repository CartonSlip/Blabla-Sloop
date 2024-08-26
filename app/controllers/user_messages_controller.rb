class UserMessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @user_message = UserMessage.new(user_message_params)
    @user_message.chatroom = @chatroom
    @user_message.user = current_user
    if @user_message.save
      redirect_to chatroom_path(@chatroom)
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def user_message_params
    params.require(:user_message).permit(:content)
  end
end
