class ConversationsController < ApplicationController
  def show
    @user2 = User.find(params[:id])
    @conversation = Conversation.find_by(user1:current_user,user2:@user2)
    @messages = @conversation.messages if @conversation.present?
  end

  def index
    @conversations = Conversation.where(user1: current_user).or(Conversation.where(user2: current_user))
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
