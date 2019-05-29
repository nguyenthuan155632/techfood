class CreateFoodInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :food_informations do |t|
      t.references :food, foreign_key: true
      t.text :description, null: false
      t.text :detail, null: false
      t.string :address, null: false
      t.string :phone_number

      t.timestamps
    end
  end
end
