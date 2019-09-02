class SessionsController < Devise::SessionsController
  after_action :set_user_id

  private

  def set_user_id
    UserSession.first.update!(identifier: current_user.id) if current_user
  end
end
