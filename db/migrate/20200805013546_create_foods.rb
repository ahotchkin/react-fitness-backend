class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :brand_name
      t.string :description
      t.string :serving_size
      t.float :servings_per_container
      t.integer :calories
      t.float :total_fat
      t.float :saturated_fat, default: 0
      t.float :polyunsaturated_fat, default: 0
      t.float :monounsaturated_fat, default: 0
      t.float :trans_fat, default: 0
      t.float :cholesterol, default: 0
      t.float :sodium, default: 0
      t.float :total_carbohydrate
      t.float :dietary_fiber, default: 0
      t.float :total_sugars, default: 0
      t.float :added_sugars, default: 0
      t.float :sugar_alcohols, default: 0
      t.float :protein
      t.float :vitamin_a, default: 0
      t.float :vitamin_c, default: 0
      t.float :vitamin_d, default: 0
      t.float :calcium, default: 0
      t.float :iron, default: 0
      t.float :potassium, default: 0

      t.timestamps
    end
  end
end
