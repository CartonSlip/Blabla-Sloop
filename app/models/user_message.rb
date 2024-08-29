class UserMessage < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  after_create_commit :broadcast_message

  private

  def broadcast_message
    broadcast_append_to "chatroom_#{chatroom.id}_user_messages",
                        target: "messages",
                        partial: "user_messages/user_message",
                        locals: { user_message: self, user: user }
    chatroom_users = chatroom.users
    chatroom_users.delete(user)
    chatroom_other_user = chatroom_users.first
    broadcast_replace_to "navbar_user_#{chatroom_other_user.id}",
                        target: "chatroom_link",
                        partial: "shared/chatroom_new_msg_btn",
                        locals: { chatroom: chatroom }
  end
end
