class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :brand_name
      t.string :description
      t.string :serving_size
      t.float :servings_per_container
      t.integer :calories
      t.float :total_fat
      t.float :saturated_fat
      t.float :polyunsaturated_fat
      t.float :monounsaturated_fat
      t.float :trans_fat
      t.float :cholesterol
      t.float :sodium
      t.float :total_carbohydrate
      t.float :dietary_fiber
      t.float :total_sugars
      t.float :added_sugars
      t.float :sugar_alcohols
      t.float :protein
      t.float :vitamin_a
      t.float :vitamin_c
      t.float :vitamin_d
      t.float :calcium
      t.float :iron
      t.float :potassium

      t.timestamps
    end
  end
end
