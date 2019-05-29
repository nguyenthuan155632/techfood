class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
      t.string :name, null: false
      t.string :display_name, null: false

      t.timestamps
    end
  end
end
