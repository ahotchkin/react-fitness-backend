class Meal < ApplicationRecord
  belongs_to :diary
  has_many :meal_foods
  has_many :foods, through: :meal_foods

  validates :category, inclusion: { in: %w(Breakfast Lunch Dinner Snacks), message: "%{value} is not a valid category" }
end
