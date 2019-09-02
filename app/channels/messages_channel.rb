class MessagesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "messages"
    stream_from "messages_#{params[:user_id]}"
  end
end
