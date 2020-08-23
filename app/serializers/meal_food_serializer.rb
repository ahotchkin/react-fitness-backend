class MealFoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :number_of_servings, :calories

  belongs_to :meal
  belongs_to :food
end
