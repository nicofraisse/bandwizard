class FavoriteArtistUser < ApplicationRecord
  belongs_to :favorite_artist
  belongs_to :user
end
