class FavoriteArtist < ApplicationRecord
  has_many :favorite_artist_users
end
