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
  end
end
