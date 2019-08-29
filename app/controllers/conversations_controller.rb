class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find_by(id: params[:id])
    @message = Message.new
  end

  def index
    @conversations = Conversation.where(user1: current_user).or(Conversation.where(user2: current_user))
  end
end
