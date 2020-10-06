class Food < ApplicationRecord
  has_many :meal_foods
  has_many :meals, through: :meal_foods

  validates :brand_name, :description, :serving_size, :servings_per_container, :calories, :total_fat, :total_carbohydrate, :protein, presence: true

  # validate where input should be integer
end
