class MealSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :calories, :meal_foods, :foods

  belongs_to :diary
end
