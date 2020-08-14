class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category, :name, :duration_in_minutes, :calories_burned

  belongs_to :user
end
