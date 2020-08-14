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

end
