class UserSerializer
  include FastJsonapi::ObjectSerializer
  
  attributes :username, :gender, :age, :height_feet, :height_inches, :weight, :daily_calorie_goal, :daily_fat_goal, :daily_saturated_fat_goal, :daily_polyunsaturated_fat_goal, :daily_monounsaturated_fat_goal, :daily_trans_fat_goal, :daily_cholesterol_goal, :daily_sodium_goal, :daily_carbohydrate_goal, :daily_fiber_goal, :daily_sugar_goal, :daily_protein_goal, :daily_vitamin_a_goal, :daily_vitamin_c_goal, :daily_vitamin_d_goal, :daily_calcium_goal, :daily_iron_goal, :daily_potassium_goal
end
