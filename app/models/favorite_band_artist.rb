class FavoriteBandArtist < ApplicationRecord
  belongs_to :band
  belongs_to :favorite_artist
end
