class Band < ApplicationRecord
  has_many :band_photos
  has_many :needed_instruments
  has_many :instruments, through: :needed_instruments
  has_many :style_bands
  has_many :styles, through: :style_bands
  has_many :favorite_band_artists
  has_many :favorite_artists, through: :favorite_band_artists
  belongs_to :user
  accepts_nested_attributes_for :band_photos
  has_many :starred_bands

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode

  # search
  scope :instruments, -> (instrument) { where instruments: instrument }
  scope :styles, -> (style) { where styles: style }
  scope :address, -> (address) { where address: address }
end
