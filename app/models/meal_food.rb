class MealFood < ApplicationRecord
  belongs_to :meal
  belongs_to :food

  validates :number_of_servings, :numericality => { :only_integer => true, :greater_than => 0 }
end
