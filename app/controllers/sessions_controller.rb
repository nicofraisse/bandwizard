class SessionsController < Devise::SessionsController
  after_action :set_user_id

  private

  def set_user_id
    if current_user
      cookies[:user_id] = current_user.id
      puts "cookie" + cookies[:user_id].to_s

      session[:user_id] = current_user.id
      puts "session" + session[:user_id].to_s

      User.find(current_user.id).remember_me!
      puts "remember me"
      # puts cookies.signed['user.id']
      # puts cookies.encrypted[:user_id]

      UserSession.first.update!(identifier: current_user.id)

      cookies.signed[:user_id] = current_user.id
      cookies.encrypted[:user_id] = current_user.id

      # User.serialize_into_cookie(current_user.id)
      # puts "serialize"
      # puts cookies.signed['user.id']
      # cookies.encrypted[:user_id]
    end
  end
end
