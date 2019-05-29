class Conversation < ApplicationRecord
  has_one :note, dependent: :destroy
  has_many :users_conversations
  has_many :users, through: :users_conversations
end
