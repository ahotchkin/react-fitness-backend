class MealFoodSerializer
  include FastJsonapi::ObjectSerializer
  # keep meal and food if I end up restructuring?????
  # attributes :number_of_servings, :calories, :meal, :food, :calories, :total_fat, :saturated_fat, :polyunsaturated_fat, :monounsaturated_fat, :trans_fat, :cholesterol, :sodium, :total_carbohydrate, :dietary_fiber, :total_sugars, :added_sugars, :sugar_alcohols, :protein, :vitamin_a, :vitamin_c, :vitamin_d, :calcium, :iron, :potassium

  attributes :number_of_servings, :calories, :food, :calories, :total_fat, :saturated_fat, :polyunsaturated_fat, :monounsaturated_fat, :trans_fat, :cholesterol, :sodium, :total_carbohydrate, :dietary_fiber, :total_sugars, :added_sugars, :sugar_alcohols, :protein, :vitamin_a, :vitamin_c, :vitamin_d, :calcium, :iron, :potassium


  belongs_to :meal
  belongs_to :food


  # Added all nutrient attributes to have access, could also do this on frontend since food is an attribute of mealFood. Would need to multiply food.attributes.nutrient * number_of_servings to get information. What is the best way to do this?????????
end
