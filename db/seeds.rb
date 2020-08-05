# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(:username => "ally", :password_digest => "password", :gender => "female", :age => 30, :height_feet => 5, :height_inches => 5.75, :weight => 130.8)

exercise = Exercise.create(:user_id => 1, :category => "cardio", :name => "Outdoor Run", :duration_in_minutes => 60, :calories_burned => 300)

diary = Diary.create(:date => 2020-01-01)

user_diary = UserDiary.create(:user_id => 1, :diary_id => 1)

meal = Meal.create(:diary_id => 1, :category => "breakfast", :calories => 90)

food = Food.create(:brand_name => "Chobani", :description => "Plain Non-Fat Greek Yogurt", :serving_size => "0.75 cup", :servings_per_container => 5, :calories => 90, :total_fat => 0, :saturated_fat => 0, :polyunsaturated_fat => 0, :monounsaturated_fat => 0, :trans_fat => 0, :cholesterol => 10, :sodium => 65, :total_carbohydrate => 6, :dietary_fiber => 0, :total_sugars => 4, :added_sugars => 0, :sugar_alcohols => 0, :protein => 16, :vitamin_a => 0, :vitamin_c => 0, :vitamin_d => 0, :calcium => 0, :iron => 0, :potassium => 0)

meal_food = MealFood.create(:meal_id => 1, :food_id => 1, :number_of_servings => 1.5, :calories => 135)
