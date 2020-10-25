class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :gender, :age, :height_feet, :height_inches, :weight, :daily_calorie_goal, :daily_fat_goal, :daily_saturated_fat_goal, :daily_polyunsaturated_fat_goal, :daily_monounsaturated_fat_goal, :daily_trans_fat_goal, :daily_cholesterol_goal, :daily_sodium_goal, :daily_carbohydrate_goal, :daily_fiber_goal, :daily_sugar_goal, :daily_protein_goal, :daily_vitamin_a_goal, :daily_vitamin_c_goal, :daily_vitamin_d_goal, :daily_calcium_goal, :daily_iron_goal, :daily_potassium_goal

  # has_many :exercises, serializer: ExerciseSerializer

  # will list exercises as an attribute instead of a relationship, breaking json convention. To list as a relationship add :exercises to attributes above. Is there a way to control info that shows by doing it that way?
  # attribute :exercises do |user|
  #   user.exercises.map do |exercise|
  #     {
  #       :date => exercise.date,
  #       :category => exercise.category,
  #       :name => exercise.name,
  #       :duration_in_minutes => exercise.duration_in_minutes,
  #       :calories_burned => exercise.calories_burned
  #     }
  #   end
  # end

  # attribute :diaries do |user|
  #   user.diaries.map do |diary|
  #     {
  #       :date => diary.date,
  #       :meals => diary.meals,
  #       # would also like food to be nested under meals. how do I do that????????????
  #     }
  #   end
  # end

  # attribute :meals do |user|
  #   user.diaries.map do |diary|
  #     diary.meals.map do |meal|
  #       {
  #         :foods => meal.foods
  #       }
  #     end
  #   end
  # end


end
