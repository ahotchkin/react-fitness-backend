class FoodSerializer
  include FastJsonapi::ObjectSerializer

  attributes :brand_name, :description, :serving_size, :servings_per_container, :calories, :total_fat, :saturated_fat, :polyunsaturated_fat, :monounsaturated_fat, :trans_fat, :cholesterol, :sodium, :total_carbohydrate, :dietary_fiber, :total_sugars, :added_sugars, :sugar_alcohols, :protein, :vitamin_a, :vitamin_c, :vitamin_d, :calcium, :iron, :potassium

  belongs_to :user
end
