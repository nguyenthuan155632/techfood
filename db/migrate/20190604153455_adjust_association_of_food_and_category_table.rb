class AdjustAssociationOfFoodAndCategoryTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :foods, :category_id, null: false
  end
end
