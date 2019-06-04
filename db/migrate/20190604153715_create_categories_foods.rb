class CreateCategoriesFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :categories_foods do |t|
      t.references :category, foreign_key: true
      t.references :food, foreign_key: true

      t.timestamps
    end
  end
end
