class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name, null: false
      t.string :display_name, null: false

      t.timestamps
    end
  end
end
