class MealSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :calories, :foods

  belongs_to :diary
end
