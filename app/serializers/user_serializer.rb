class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :gender, :age, :height_feet, :height_inches, :weight, :daily_calorie_goal

  # has_many :exercises, serializer: ExerciseSerializer

  # will list exercises as an attribute instead of a relationship, breaking json convention. To list as a relationship add :exercises to attributes above. Is there a way to control info that shows by doing it that awy?
  attribute :exercises do |user|
    user.exercises.map do |exercise|
      {
        :category => exercise.category,
        :name => exercise.name,
        :duration_in_minutes => exercise.duration_in_minutes,
        :calories_burned => exercise.calories_burned
      }
    end
  end

  attribute :diaries do |user|
    user.diaries.map do |diary|
      {
        :date => diary.date,
        :meals => diary.meals,
        # would also like food to be nested under meals. how do I do that????????????
      }
    end
  end

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
