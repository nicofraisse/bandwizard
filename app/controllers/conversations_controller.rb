class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.where(user1: current_user).or Conversation.where(user2: current_user)
    policy_scope(@conversations)
  end

  def show
    #  This will
    # # create a new conversation between you two.
    # if Conversation.find_by(user1_id: current_user.id, user2_id: params[:user2_id]).nil?
    #   @conversation = Conversation.create!(user1_id: current_user.id, user2_id: params[:user2_id])
    # # Link to conversations page from musician profile who you have spoken to before
    # elsif params[:user2_id]
    #   @conversation = Conversation.find_by(user1_id: current_user.id, user2_id: params[:user2_id])
    #
    # elsif
    # end

    # Link to conversations page from your 'conversations index' page. params[:id] is the Conversation id.
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
    authorize @conversation
    policy_scope(@conversation)

    @message = Message.new
    set_messages_as_read(@conversation.messages)

  end

  def new
      @conversation = Conversation.new
    @message = Message.new
  end

  def create

    # @message = Message.new(message_params)
    # @message.user = current_user
    # if message.save!
    #   puts "MESSAGE SAVED"
    # else
    #   redirect_to conversations_path
    # end

    # user1 = current_user
    # user2 = User.find(params[:user_id])
    # @conversation = Conversation.new
    # @conversation.user1 = user1
    # @conversation.user2 = user2
    # @conversation.save!
    # redirect to "conversation/#{conversation.id}"
  end

  private

  def set_messages_as_read(messages)
    messages.each {|msg| msg.update!(unread: false)}
  end

  def message_params
    params.require(:message).permit(:content, :conversation_id)
  end

  private
  def params_conv
    params.require(:conversation).permit(:user2)
  end
end
