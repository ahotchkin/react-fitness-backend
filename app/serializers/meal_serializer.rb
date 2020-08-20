class MealSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :calories

  belongs_to :diary
end
