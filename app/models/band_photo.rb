class BandPhoto < ApplicationRecord
  belongs_to :band
  mount_uploader :photo, PhotoUploader
end
