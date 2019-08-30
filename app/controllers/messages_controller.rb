class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save!
      ActionCable.server.broadcast "messages_#{message.conversation.user1_id}",
        message: message.msg,
        user: message.user.username
      ActionCable.server.broadcast "messages_#{message.conversation.user2_id}",
        message: message.msg,
        user: message.user.username

      head :ok
    else
      redirect_to request.referrer
    end
  end

  private

    def message_params
      params.require(:message).permit(:msg, :conversation_id)
    end
end
