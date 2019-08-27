class FavoriteArtistUser < ApplicationRecord
  belongs_to :FavoriteArtist
  belongs_to :user
end
