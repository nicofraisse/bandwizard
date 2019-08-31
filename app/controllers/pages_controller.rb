class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

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

  private


end
