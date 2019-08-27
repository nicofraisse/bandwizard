class Band < ApplicationRecord
  has_many :photos
  has_many :needed_instruments
  has_many :instruments, through: :needed_instruments
  has_many :style_bands
  has_many :styles, through: :style_bands
  has_many :ffavorite_band_artists
  has_many :favorite_artists, through: :favorite_band_artists
  belongs_to :user
end
