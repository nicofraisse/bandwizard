class MessagesController < ApplicationController
  def create
    message = Message.new(message_params)

    message.user = current_user

    authorize(message)
    if message.save!
      ActionCable.server.broadcast "messages_#{message.conversation.user1_id}",
        messageHTML: render_to_string(partial: "messages/message", locals: { message: message })
      ActionCable.server.broadcast "messages_#{message.conversation.user2_id}",
        messageHTML: render_to_string(partial: "messages/message", locals: { message: message })

      head :ok
    end
  end



  private

  def message_params
    params.require(:message).permit(:msg, :conversation_id)
  end
end
