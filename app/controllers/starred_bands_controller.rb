class StarredBandsController < ApplicationController
  def create
    @favorite = StarredBand.find_by(band: Band.find(params[:band_id]), user: current_user)
    @starred = StarredBand.new
    authorize @starred
    @band = Band.find(params[:band_id])
    if @favorite.nil?
      @starred.band = @band
      @starred.user = current_user
      @starred.save!
      @favorite_exists = true
    else
      @favorite.destroy
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
