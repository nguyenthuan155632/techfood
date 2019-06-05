class Food < ApplicationRecord
  include FoodSearchable

  has_many :categories_foods
  has_many :categories, through: :categories_foods
  has_one :food_information
  belongs_to :source
  belongs_to :user

  enum status: { pending: :pending, published: :published, unpublished: :unpublished }
end
