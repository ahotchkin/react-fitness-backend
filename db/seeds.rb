# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ally = User.create(:username => "ally", :password => "password", :gender => "female", :age => 30, :height_feet => 5, :height_inches => 5.75, :weight => 130.8)

ally_run = ally.exercises.create(:category => "cardio", :name => "Outdoor Run", :duration_in_minutes => 60, :calories_burned => 300)

ally_diary = ally.diaries.create(:date => Date.today)

ally_breakfast = ally_diary.meals.create(:category => "breakfast", :calories => 90)

chobani = Food.create(:brand_name => "Chobani", :description => "Plain Non-Fat Greek Yogurt", :serving_size => "0.75 cup", :servings_per_container => 5, :calories => 90, :total_fat => 0, :saturated_fat => 0, :polyunsaturated_fat => 0, :monounsaturated_fat => 0, :trans_fat => 0, :cholesterol => 10, :sodium => 65, :total_carbohydrate => 6, :dietary_fiber => 0, :total_sugars => 4, :added_sugars => 0, :sugar_alcohols => 0, :protein => 16, :vitamin_a => 0, :vitamin_c => 0, :vitamin_d => 0, :calcium => 0, :iron => 0, :potassium => 0)

ally_meal_food = ally_breakfast.meal_foods.create(:food => chobani, :number_of_servings => 1.5, :calories => 135)

soup = Food.create(:brand_name => "Campbell's", :description => "Chicken Noodle Soup", :serving_size => "2 cups", :servings_per_container => 1, :calories => 300, :total_fat => 45, :saturated_fat => 25, :polyunsaturated_fat => 0, :monounsaturated_fat => 0, :trans_fat => 0, :cholesterol => 150, :sodium => 280, :total_carbohydrate => 8, :dietary_fiber => 0, :total_sugars => 4, :added_sugars => 0, :sugar_alcohols => 0, :protein => 6, :vitamin_a => 0, :vitamin_c => 0, :vitamin_d => 0, :calcium => 0, :iron => 0, :potassium => 0)

ally_meal_food_2 = ally_lunch.meal_foods.create(:food => soup, :number_of_servings => 1, :calories => 300)
