class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages_#{current_user.id}"
  end
end
