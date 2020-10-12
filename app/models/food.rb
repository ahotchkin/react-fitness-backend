class Food < ApplicationRecord
  has_many :meal_foods
  has_many :meals, through: :meal_foods

  validates :brand_name, :description, :serving_size, presence: true
  validates :servings_per_container, :numericality => { :only_float => true, :greater_than => 0 }
  validates :calories, :numericality => { :only_integer => true, :greater_than => 0 }
  validates :total_fat, :total_carbohydrate, :protein, :numericality => { :only_float => true, :greater_than_or_equal_to => 0 }
end
