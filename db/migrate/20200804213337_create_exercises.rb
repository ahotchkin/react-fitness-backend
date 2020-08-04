class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.string :name
      t.integer :duration_in_minutes
      t.integer :calories_burned

      t.timestamps
    end
  end
end
