class MealFoodSerializer
  include FastJsonapi::ObjectSerializer
  # keep meal and food if I end up restructuring?????
  attributes :number_of_servings, :calories, :meal, :food

  belongs_to :meal
  belongs_to :food
end
