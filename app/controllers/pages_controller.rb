class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :public_profile]

  def home
  end

  def edit

  end

  def dashboard
    @musician = User.find(params[:user_id])
  end

  def public_profile
    @musician = User.find(params[:user_id])
  end

  def stars
    @starred_bands = current_user.starred_bands
  end

  private


end
