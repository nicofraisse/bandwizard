class ConversationsController < ApplicationController
  def show
    @conversation = Conversation.find_by(user1_id: current_user.id, user2_id: params[:user2_id])
    if @conversation.nil?
      @conversation = Conversation.create!(user1_id: current_user.id, user2_id: params[:user2_id])
    end
    @message = Message.new

    # user2 = User.find(params[:id])
    # @conversation = Conversation.find_by(user1: current_user, user2:user2)
    # @messages = Message.new
  end

  def index
    @conversations = Conversation.where(user1: current_user).or(Conversation.where(user2: current_user))
  end

  def new
    @conversation = Conversation.new
    @message = Message.new
  end

  def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save!
      puts "MESSAGE SAVED"
    else
      redirect_to conversations_path
    end

    # user1 = current_user
    # user2 = User.find(params[:user_id])
    # @conversation = Conversation.new
    # @conversation.user1 = user1
    # @conversation.user2 = user2
    # @conversation.save!
    # redirect to "conversation/#{conversation.id}"
  end

  private

  def message_params
    params.require(:message).permit(:content, :conversation_id)
  end
end
