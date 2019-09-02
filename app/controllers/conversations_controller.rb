class ConversationsController < ApplicationController
  def show
    if Conversation.where(id: params[:user_id]).present?
      @conversation = Conversation.find_by(id: params[:user_id].to_i)
    else
      # Link to conversations page from the musician show page
      if Conversation.find_by(user1_id: current_user.id, user2_id: params[:user_id])
        # Find an existing conversation between current user and musician.
        @conversation = Conversation.find_by(user1_id: current_user.id, user2_id: params[:user_id])
      elsif Conversation.find_by(user1_id: params[:user_id], user2_id: current_user.id)
        # Find an existing conversation between current user and musician.
        @conversation = Conversation.find_by(user1_id: params[:user_id], user2_id: current_user.id)
      else
        # Create a new conversation between current user and musician if no musician exists yet.
        @conversation = Conversation.create!(user1_id: current_user.id, user2_id: params[:user_id])
      end
    end
    policy_scope(@conversation)

    @message = Message.new

  end

  def index
    @conversations = Conversation.where(user1: current_user).or(Conversation.where(user2: current_user))
    policy_scope(@conversations)
  end

  def new
    @conversation = Conversation.new
    user1 = current_user
    user2 = User.find(params_conv[:user2])
    @conversation = Conversation.new
    @conversation.user1 = user1
    @conversation.user2 = user2
    @conversation.save!
    @message = Message.new
  end

  def create
    user1 = current_user
    user2 = User.find(params[:user_id])
    @conversation = Conversation.new
    @conversation.user1 = user1
    @conversation.user2 = user2
    @conversation.save!
    redirect to "conversation/#{conversation.id}"
  end

  private
  def params_conv
    params.require(:conversation).permit(:user2)
  end
end
