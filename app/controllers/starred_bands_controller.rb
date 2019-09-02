class StarredBandsController < ApplicationController
  def create
    favorite = StarredBand.where(band:Band.find(params[:band_id]),user:current_user)
    @starred = StarredBand.new
    authorize @starred
    @band = Band.find(params[:band_id])
    if favorite == []
      @starred.band = @band
      @starred.user = current_user
      @starred.save!
      @favorite_exists = true
    else
      favorite.destroy_all
      @favorite_exists = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
