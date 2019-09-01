class BandsController < ApplicationController
   skip_before_action :authenticate_user!, only: [:index, :show,:search,:map]
   skip_after_action :verify_policy_scoped, only: [:index, :show,:search,:map]
  def index

   @choice = params[:choice].to_i
    if @choice == 1

      # ********************* SEARCH MUSICIAN ***************************
      # Get all InstrumentUsers and StyleUsers from the users's input
      instru_user = InstrumentUser.where(instrument: Instrument.find_by_name(params[:instruments]))
      style_user = StyleUser.where(style: Style.find_by_name(params[:style]))
      all_users_by_instrument = instru_user.map do |instru|
       instru.user
      end
      all_users_by_style = style_user.map do |style|
       style.user
      end

      # FORM and array styles and instruments that match the user's input

      c = []
      all_users_by_instrument.each do |element|
        if all_users_by_style.include?(element)
          c << element
        end
      end

      # FILTER BY ADDRESS RADIUS

      unless (style_user == nil || instru_user == nil)
        geocoded_address = Geocoder.coordinates(params[:address])
        geo_users = User.near(geocoded_address, params[:slider].to_i,units: :km)
        @musicians = []

        geo_users.each do |element|
          if c.include?(element)
            @musicians << element
          end

        end

      # DISPLAY RESULTS ON MAP

        @markers = @musicians.map do |musician|
          {
            lat: musician.latitude,
            lng: musician.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { musician: musician })
          }
        end
      end

    #render "results"
    else

      # ********************* SEARCH BAND ***********************

      # SAME AS SEARCH MUSICIAN
      # band_instruments = Band.where(needed_instruments: Instrument.where(name: params[:instruments]))
      # band_styles = Band.where(styles: Style.where(name: params[:styles]))
      # all_bands = Band.joins(:instruments, :styles).where(instruments: { id: band_instruments.id }, styles: {id: band_styles.id})

      # Get all InstrumentBands and StyleBands from the users's input

      needed_instru = NeededInstrument.where(instrument: Instrument.find_by_name(params[:instruments]))
      style_band = StyleBand.where(style: Style.find_by_name(params[:styles]))

      all_bands = Band.all
      unless (style_band == nil || needed_instru == nil)
        geocoded_address = Geocoder.coordinates(params[:address])
        geo_bands = Band.near(geocoded_address, params[:slider].to_i,units: :km)
        near_bands = []
        geo_bands.each do |element|
          if all_bands.include?(element)
            near_bands << element
          end
        end


      score_hash = Hash.new
      Band.all.each do |band|
        score_hash[band] = 0
      end

      all_bands_by_instrument = needed_instru.map do |instru|
        instru.band
      end

      had_instrument = []
      all_bands_by_instrument.each do |band|
        score_hash[band] += 1
        had_instrument << "yup"
      end


      all_bands_by_style = style_band.map do |style|
        style.band
      end

      had_style = []
      all_bands_by_style.each do |band|
        score_hash[band] += 1
        had_style << "yes"
      end

      bands_with_scores = score_hash.to_a
      @bands_with_scores_sorted = bands_with_scores.sort_by { |e| e[1] }.reverse
      @bands_sorted = @bands_with_scores_sorted.map { |e| e[0] }
      # add a point to all bands which are in these arrays


      # FORM and array styles and instruments that match the user's input

      # all_bands_by_instrument.each do |element|
      #   if all_bands_by_style.include?(element)
      #     c << element
      #   end
      # end

      # FILTER BY ADDRESS RADIUS


        @bands = Band.all


        # DISPLAY RESULTS ON MAP

        @markers = @bands.map do |band|
          {
            lat: band.latitude,
            lng: band.longitude,
            infoWindow: render_to_string(partial: "info_window", locals: { band: band })
          }
        end
      end
    end
  end













































  def new
    @band = Band.new
    authorize @band
    @band_photo = @band.band_photos.build
  end

  def create
    band = Band.new(band_params)
    authorize band
    band.user = current_user
    if band.save!
      params[:band_photos]['photo'].each do |a|
      band_photo = band.band_photos.create!(:photo => a, :band_id => band.id)
      end
      # flash[:notice] = "You have successfully created a band."
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
  # def filtering_params(params)
  #   params.slice(:instruments, :styles, :address)
  # end
# def params_style
#   # params.require(:style).permit(:name => [][])
#   params.permit(:style, {:name => []})

# end
end
