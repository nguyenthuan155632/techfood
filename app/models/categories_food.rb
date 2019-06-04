class CategoriesFood < ApplicationRecord
  belongs_to :category
  belongs_to :food
end
