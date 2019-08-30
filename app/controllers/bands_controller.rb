class BandsController < ApplicationController
  def index
    @choice = params[:choice].to_i
      if @choice == 1
        # *********************search musicien**************************************
        instrument = Instrument.find_by(name: params[:instruments])
        style = Style.find_by(name: params[:styles])
        all_musicians = User.joins(:instruments, :styles).where(instruments: { id: instrument.id }, styles: {id: style.id})

        geocoded_address = Geocoder.coordinates(params[:address])
        @musicians = all_musicians.near(geocoded_address, params[:slider].to_i,units: :km)
        # Musician will be the sected one, not all
        # Need to delete this line after
        # @musicians = User.all
        @markers = @musicians.map do |musician|
          {
            lat: musician.latitude,
            lng: musician.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { musician: musician })
          }
        end
      #render "results"
      else
        # *********************search band**************************************
        @bands = Band.where(nil)
        # creates an anonymous scope
        filtering_params(params).each do |key, value|
        @bands = @bands.public_send(key, value) if value.present?
        end
      # @bands = Band.geocoded
      @markers = @bands.map do |band|
        {
          lat: band.latitude,
          lng: band.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { band: band })
        }
      end
      end
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

  def mybands
    @bands = Band.where(user: current_user)
  end

  def musicians
    @musicians = User.all
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
