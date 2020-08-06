class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :gender, :age, :height_feet, :height_inches, :weight, :daily_calorie_goal
end
