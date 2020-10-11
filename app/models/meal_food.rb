class MealFood < ApplicationRecord
  belongs_to :meal
  belongs_to :food

  validates :number_of_servings, :calories, :numericality => { :only_integer => true, :greater_than => 0 }
  validates :total_fat, :saturated_fat, :polyunsaturated_fat, :monounsaturated_fat, :trans_fat, :cholesterol, :sodium, :total_carbohydrate, :dietary_fiber, :total_sugars, :added_sugars, :sugar_alcohols, :protein, :vitamin_a, :vitamin_c, :vitamin_d, :calcium, :iron, :potassium, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 }
end
