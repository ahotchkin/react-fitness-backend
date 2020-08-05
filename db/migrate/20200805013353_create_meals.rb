class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.references :diary, null: false, foreign_key: true
      t.string :catory
      t.integer :calories

      t.timestamps
    end
  end
end
