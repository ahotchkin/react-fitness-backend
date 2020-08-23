class DiarySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date

  belongs_to :user

  attribute :meals do |diary|
    diary.meals.map do |meal|
      {
        :category => meal.category,
        :calories => meal.calories,
        :foods => meal.foods
      }
    end
  end
end
