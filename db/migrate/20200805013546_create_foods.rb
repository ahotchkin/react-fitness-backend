class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :brand_name
      t.string :description
      t.string :serving_size
      t.integer :servings_per_container
      t.integer :calories
      t.integer :total_fat
      t.integer :saturated_fat, default: 0
      t.integer :polyunsaturated_fat, default: 0
      t.integer :monounsaturated_fat, default: 0
      t.integer :trans_fat, default: 0
      t.integer :cholesterol, default: 0
      t.integer :sodium, default: 0
      t.integer :total_carbohydrate
      t.integer :dietary_fiber, default: 0
      t.integer :total_sugars, default: 0
      t.integer :added_sugars, default: 0
      t.integer :sugar_alcohols, default: 0
      t.integer :protein
      t.integer :vitamin_a, default: 0
      t.integer :vitamin_c, default: 0
      t.integer :vitamin_d, default: 0
      t.integer :calcium, default: 0
      t.integer :iron, default: 0
      t.integer :potassium, default: 0

      t.timestamps
    end
  end
end
