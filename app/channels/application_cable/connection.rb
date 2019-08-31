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
      User.find(2)
      # verified_user = User.find_by(id: cookies.signed[:user_id])
      # # binding.pry
      # if verified_user
      #   verified_user
      # else
      #   reject_unauthorized_connection
      # end
    end
  end
end
