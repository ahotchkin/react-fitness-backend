class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :category, :name, :duration_in_minutes, :calories_burned

  belongs_to :user
end
