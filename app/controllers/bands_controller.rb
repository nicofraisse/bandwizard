class BandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show,:search,:map, :filter, :public_profile, :mybands]
  skip_after_action :verify_policy_scoped, only: [:index, :show,:search, :map, :public_profile]
  def index
    @choice = params[:doubleslider].nil? ? 2 : 1

    if @choice == 1
      relevant_instru = InstrumentUser.where(instrument: Instrument.find_by_name(params[:instruments])).includes(:user)
      needed_goals = ["is_jamming", "is_live", "is_composition", "is_recording", "is_cover"]
      @all_musicians = User.all.includes(:styles, :instruments) #, :starred_users)

      unless params[:style] == nil
        style_musician = []
        params[:style].each do |style|
          style_musician << StyleUser.where(style: Style.find_by_name(style)).includes(:user)
        end
        style_musician.flatten!
      end

      score_hash = Hash.new
      @all_musicians.each do |musician|
        score_hash[musician] = 0
      end

      @matching_filters = @all_musicians.to_a.map { |b| [b, []] }.to_h

      unless params[:style] == nil
        all_musicians_by_style = style_musician.map do |style|
          style.user
        end
      else
        all_musicians_by_style = []
      end

      had_style = []
      all_musicians_by_style.each do |musician|
        score_hash[musician] += 1
        @matching_filters[musician] << "style / 1"
      end

      # GOALS
      @all_musicians.each do |musician|
        if musician.is_jamming.to_s == params[:is_jamming]
          score_hash[musician] += 1
          @matching_filters[musician] << "is jamming / 1"
        end
        if musician.is_live.to_s == params[:is_live]
          score_hash[musician] += 1
          @matching_filters[musician] << "is live / 1"
        end
        if musician.is_composition.to_s == params[:is_composition]
          score_hash[musician] += 1
          @matching_filters[musician] << "is composition / 1"
        end
        if musician.is_recording.to_s == params[:is_recording]
          score_hash[musician] += 1
          @matching_filters[musician] << "is recording / 1"
        end
        if musician.is_covers.to_s == params[:is_covers]
          score_hash[musician] += 1
          @matching_filters[musician] << "is cover / 1"
        end
      end

      # EXPERIENCE
      relevant_instru.each do |rel_ins|
        if rel_ins.experience == params[:experience]
          score_hash[rel_ins.user] += 3
          @matching_filters[rel_ins.user] << "XP / 1"
        end
      end

      all_musicians_by_instrument = relevant_instru.map do |instru|
        instru.user
      end

      # had_instrument = []
      # all_musicians_by_instrument.each do |musician|
      #   score_hash[musician] += 10
      #   @matching_filters[musician] << "instrument / 3"
      # end
      #  Get _near_musicians, the only musicians in the search radius
      musicians_with_scores = score_hash.to_a
      all_musicians = @all_musicians

      right_instrument_musicians = []
      all_musicians_by_instrument.each do |musician|
        if all_musicians.include?(musician)
          right_instrument_musicians << musician
        end
      end


      @geocoded_address = [45.526123,-73.5972601]
      @address = '5333, Avenue Casgrain, Montréal, Canada'

      geo_musicians = User.near([45.526123, -73.5950714], params[:slider].to_i,units: :km)
      near_musicians = []
      geo_musicians.each do |element|
        if all_musicians.include?(element)
          near_musicians << element
        end
      end

      # accepted_musicians = right_instrument_musicians & near_musicians

      accepted_musicians = []
      right_instrument_musicians.map do |musician|
        if near_musicians.include?(musician)
          accepted_musicians << musician
        end
        puts accepted_musicians
      end

      max_match = 0
      # instrument
      max_match += 10
      # location
      # distance
      # styles
      # max_match += musician.styles.count
      # experience
      max_match += 1
      # open to
      max_match += 5

      @musicians_with_scores_sorted = musicians_with_scores.sort_by { |e| e[1] }.reverse
      accepted_musicians_with_scores = musicians_with_scores.select { |musician| accepted_musicians.include?(musician[0]) }
      @accepted_musicians_with_scores_sorted = accepted_musicians_with_scores.sort_by { |e| e[1] }.reverse
      # @musicians_sorted = @musicians_with_scores_sorted.map { |e| e[0] }
      @accepted_musicians_sorted = @accepted_musicians_with_scores_sorted.map { |e| e[0] }



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
       # staring band
      # Get all InstrumentBands and StyleBands from the users's input
      needed_instru = NeededInstrument.where(instrument: Instrument.find_by_name(params[:instruments])).includes(:band)
      needed_goals = ["is_jamming", "is_live", "is_composition", "is_recording", "is_cover"]

      @all_bands = Band.all.includes(:styles, :instruments, :starred_bands)

      unless params[:style] == nil
        style_band = []
        params[:style].each do |style|
          style_band << StyleBand.where(style: Style.find_by_name(style)).includes(:band)
        end
        style_band.flatten!
      end

      score_hash = Hash.new
      @all_bands.each do |band|
        score_hash[band] = 0
      end

      @matching_filters = @all_bands.to_a.map { |b| [b, []] }.to_h

      unless params[:style] == nil
        all_bands_by_style = style_band.map do |style|
          style.band
        end
      else
        all_bands_by_style = []
      end

      had_style = []
      all_bands_by_style.each do |band|
        score_hash[band] += 1
        @matching_filters[band] << "style / 1"
      end

      # GOALS
      @all_bands.each do |band|
        if band.is_jamming.to_s == params[:is_jamming]
          score_hash[band] += 1
          @matching_filters[band] << "is jamming / 1"
        end
        if band.is_live.to_s == params[:is_live]
          score_hash[band] += 1
          @matching_filters[band] << "is live / 1"
        end
        if band.is_composition.to_s == params[:is_composition]
          score_hash[band] += 1
          @matching_filters[band] << "is composition / 1"
        end
        if band.is_recording.to_s == params[:is_recording]
          score_hash[band] += 1
          @matching_filters[band] << "is recording / 1"
        end
        if band.is_cover.to_s == params[:is_cover]
          score_hash[band] += 1
          @matching_filters[band] << "is cover / 1"
        end
      end

      # EXPERIENCE
      @all_bands.each do |band|
        if band.experience == params[:experience]
          score_hash[band] += 3
          @matching_filters[band] << "XP / 1"
        end
      end

      all_bands_by_instrument = needed_instru.map do |instru|
        instru.band
      end

      # had_instrument = []
      # all_bands_by_instrument.each do |band|
      #   score_hash[band] += 10
      #   @matching_filters[band] << "instrument / 3"
      # end
      #  Get _near_bands, the only bands in the search radius
      bands_with_scores = score_hash.to_a
      all_bands = @all_bands

      right_instrument_bands = []
      all_bands_by_instrument.each do |band|
        if all_bands.include?(band)
          right_instrument_bands << band
        end
      end


      @geocoded_address = [45.526123,-73.5972601]
      @address = '5333, Avenue Casgrain, Montréal, Canada'

      geo_bands = Band.near([45.526123, -73.5950714], params[:slider].to_i,units: :km)
      near_bands = []
      geo_bands.each do |element|
        if all_bands.include?(element)
          near_bands << element
        end
      end

      # accepted_bands = right_instrument_bands & near_bands

      accepted_bands = []
      right_instrument_bands.map do |band|
        if near_bands.include?(band)
          accepted_bands << band
        end
        puts accepted_bands
      end

      max_match = 0
      # instrument
      max_match += 10
      # location
      # distance
      # styles
      # max_match += band.styles.count
      # experience
      max_match += 1
      # open to
      max_match += 5

      @bands_with_scores_sorted = bands_with_scores.sort_by { |e| e[1] }.reverse
      accepted_bands_with_scores = bands_with_scores.select { |band| accepted_bands.include?(band[0]) }
      @accepted_bands_with_scores_sorted = accepted_bands_with_scores.sort_by { |e| e[1] }.reverse
      # @bands_sorted = @bands_with_scores_sorted.map { |e| e[0] }
      @accepted_bands_sorted = @accepted_bands_with_scores_sorted.map { |e| e[0] }
      # FILTER BY ADDRESS RADIUS
        # DISPLAY RESULTS ON MAP
        # @markers = @bands_sorted.map do |band|
        #   {
        #     lat: band.latitude,
        #     lng: band.longitude,
        #     infoWindow: render_to_string(partial: "info_window", locals: { result: band })
        #   }
        # end
      end
    end

    def new
      @band = Band.new
      authorize @band
      @band_photo = @band.band_photos.build
    end

    def map
      @results = {}
      map_params.each { |key, value| @results[Band.find(key)] = value}
      @markers = @results.map do |key, value|
        # raise
        {
          lat: key.latitude,
          lng: key.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { result: [key, value] })
        }
      end


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
    # policy_scope(@bands)
    authorize @bands
  end

  def musicians
    @musicians = User.all
  end
  private
  def band_params
    params.require(:band).permit(:name, :bio,:personal_website, :youtube_link, :address, :soundcloud_link, :is_recording,:is_pro,:is_live,:is_jamming, :is_cover,:is_pro,:is_composition,band_photos_attributes:
      [:id, :band_id, :photo])
  end
  def map_params
    params.permit(:results)
  end
end
