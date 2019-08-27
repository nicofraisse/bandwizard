class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
   # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :full_name, :gender, :age, :address, :photo, :soundcloud_link, :youtube_link, :personal_website, :bio, :is_live, :is_recording, :is_jamming, :is_composition, :is_covers, :is_pro])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [ :username, :full_name, :gender, :age, :address, :photo, :soundcloud_link, :youtube_link, :personal_website, :bio, :is_live, :is_recording, :is_jamming, :is_composition, :is_covers, :is_pro ] )
  end
end
