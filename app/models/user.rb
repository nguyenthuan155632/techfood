class User < ApplicationRecord
  LOCATION = { latitude: '10.77307575675075', longitude: '106.72767170503232' }.freeze

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :shared_images
  has_many :owner_images
  has_many :messages, dependent: :destroy
  has_many :comments
  has_many :reviews
  has_many :foods
  has_many :users_conversations
  has_many :conversations, through: :users_conversations
end
