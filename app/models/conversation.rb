class Conversation < ApplicationRecord
  # belongs_to :user1, class_name: "User"
  # belongs_to :user2, class_name: "User"
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages
end
