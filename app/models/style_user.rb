class StyleUser < ApplicationRecord
  belongs_to :user
  belongs_to :style
end
