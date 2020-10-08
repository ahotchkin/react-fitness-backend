class CreateMealFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :meal_foods do |t|
      t.references :meal, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.float :number_of_servings

      # figure out which of these need to be included here and which I can pull from mealFoods.attributes.food on the frontend
      t.integer :calories
      t.integer :total_fat
      t.integer :saturated_fat
      t.integer :polyunsaturated_fat
      t.integer :monounsaturated_fat
      t.integer :trans_fat
      t.integer :cholesterol
      t.integer :sodium
      t.integer :total_carbohydrate
      t.integer :dietary_fiber
      t.integer :total_sugars
      t.integer :added_sugars
      t.integer :sugar_alcohols
      t.integer :protein
      t.integer :vitamin_a
      t.integer :vitamin_c
      t.integer :vitamin_d
      t.integer :calcium
      t.integer :iron
      t.integer :potassium

      t.timestamps
    end
  end
end
