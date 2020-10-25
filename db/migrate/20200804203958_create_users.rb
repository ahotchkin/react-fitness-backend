class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :gender
      t.integer :age
      t.integer :height_feet
      t.float :height_inches
      t.float :weight
      t.string :lifestyle
      t.integer :daily_calorie_goal
      t.integer :daily_fat_goal
      t.integer :daily_saturated_fat_goal
      t.integer :daily_polyunsaturated_fat_goal
      t.integer :daily_monounsaturated_fat_goal
      t.integer :daily_trans_fat_goal, default: 0
      t.integer :daily_cholesterol_goal, default: 300
      t.integer :daily_sodium_goal, default: 2300
      t.integer :daily_carbohydrate_goal
      t.integer :daily_fiber_goal, default: 25
      t.integer :daily_sugar_goal
      t.integer :daily_protein_goal
      t.integer :daily_vitamin_a_goal
      t.integer :daily_vitamin_c_fat_goal
      t.integer :daily_vitamin_d_fat_goal
      t.integer :daily_calcium_goal
      t.integer :daily_iron_goal
      t.integer :daily_potassium_goal, default: 4700

      t.timestamps
    end
  end
end
