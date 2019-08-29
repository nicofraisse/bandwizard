class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages
  has_many :conversations
  has_many :bands

  has_many :instrument_users
  has_many :instruments, through: :instrument_users

  has_many :style_users
  has_many :styles, through: :style_users

  has_many :favorite_artist_users
  has_many :favorite_artists, through: :favorite_artist_users
  validates :username, presence: true, uniqueness: true

  has_many :starred_users
  has_many :starred_bands

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
