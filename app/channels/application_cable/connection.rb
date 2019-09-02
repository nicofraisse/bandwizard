module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      # true
      # self.current_user
      self.current_user = find_verified_user
      # logger.add_tags 'ActionCable', current_user.name
    end

    def find_verified_user
      # binding.pry

      # puts "session in cable start"
      # # puts cookies.signed.size
      # puts cookies.signed[:user_id]
      # puts cookies.encrypted[:user_id]
      # puts "session in cable end"
      # p "my user session"
      # p UserSession.last.identifier
      # puts "session" + session[:user_id].to_s
      # puts cookies.signed['user_id']

      # User.find(4)

      verified_user = User.find(UserSession.first.identifier.to_i)
      if verified_user
        verified_user
      else
        reject_unauthorized_connection
      end
    end
  end
end
