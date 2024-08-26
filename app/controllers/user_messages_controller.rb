class UserMessagesController < ApplicationController
  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @user_message = UserMessage.new(user_message_params)
    @user_message.chatroom = @chatroom
    @user_message.user = current_user
    if @user_message.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append(:messages, partial: "user_messages/user_message",
            locals: { user_message: @user_message, user: current_user })
        end
        format.html { redirect_to chatroom_path(@chatroom) }
      end
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def user_message_params
    params.require(:user_message).permit(:content)
  end
end
