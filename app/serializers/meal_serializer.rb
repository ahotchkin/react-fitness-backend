class MealSerializer
  include FastJsonapi::ObjectSerializer
  # remove meal_foods if I end up restructuring??????
  # attributes :category, :calories, :meal_foods, :foods
  attributes :category, :calories, :foods


  belongs_to :diary
end
