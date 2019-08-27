class FavoriteBandArtist < ApplicationRecord
  belongs_to :band
  belongs_to :FavoriteArtist
end
