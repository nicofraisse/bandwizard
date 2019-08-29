class BandsController < ApplicationController
  def index
    @bands = Band.where(nil) # creates an anonymous scope
    filtering_params(params).each do |key, value|
    @bands = @bands.public_send(key, value) if value.present?
  end
   @bands = Band.geocoded #returns flats with coordinates

    @markers = @bands.map do |band|
      {
        lat: band.latitude,
        lng: band.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { band: band })
      }
    end
  #render "results"
  end


  def new
    @band = Band.new
    @band_photo = @band.band_photos.build
  end

  def create
    band = Band.new(band_params)
    band.user = current_user
    if band.save!
       params[:band_photos]['photo'].each do |a|
          band_photo = band.band_photos.create!(:photo => a, :band_id => band.id)
       end
      redirect_to band_path(band)
    else
      render :new
    end
  end

  def show
    @band = Band.find(params[:id])
  end

private
def band_params
  params.require(:band).permit(:name, :bio,:personal_website, :youtube_link, :address, :soundcloud_link, :is_recording,:is_pro,:is_live,:is_jamming, :is_cover,:is_pro,:is_composition,band_photos_attributes:
  [:id, :band_id, :photo])
end
def filtering_params(params)
  params.slice(:instruments, :styles, :address)
end

end
