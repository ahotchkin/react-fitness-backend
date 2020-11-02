# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(:username => "User1", :password => "password", :gender => "female", :age => 30, :height_feet => 5, :height_inches => 5.75, :weight => 130.8, :lifestyle => 1.3, :daily_calorie_goal => 1676, :daily_fat_goal => 56, :daily_saturated_fat_goal => 1, :daily_polyunsaturated_fat_goal => 1, :daily_monounsaturated_fat_goal => 0, :daily_carbohydrate_goal => 210, :daily_sugar_goal => 25, :daily_protein_goal => 84, :daily_vitamin_a_goal => 700, :daily_vitamin_c_goal => 75, :daily_vitamin_d_goal => 15, :daily_calcium_goal => 1200, :daily_iron_goal => 18)

chobani = Food.create(:user_id => 1, :brand_name => "Chobani", :description => "Plain Non-Fat Greek Yogurt", :serving_size => "0.75 cup", :servings_per_container => 5, :calories => 90, :total_fat => 0, :saturated_fat => 0, :polyunsaturated_fat => 0, :monounsaturated_fat => 0, :trans_fat => 0, :cholesterol => 10, :sodium => 65, :total_carbohydrate => 6, :dietary_fiber => 0, :total_sugars => 4, :added_sugars => 0, :sugar_alcohols => 0, :protein => 16, :vitamin_a => 0, :vitamin_c => 0, :vitamin_d => 0, :calcium => 0, :iron => 0, :potassium => 0)

english_muffin = Food.create(:user_id => 1, :brand_name => "Thomas'", :description => "Original English Muffins", :serving_size => "1 muffin", :servings_per_container => 6, :calories => 150, :total_fat => 1, :saturated_fat => 0, :polyunsaturated_fat => 0.5, :monounsaturated_fat => 0, :trans_fat => 0, :cholesterol => 0, :sodium => 240, :total_carbohydrate => 28, :dietary_fiber => 1, :total_sugars => 0, :added_sugars => 0, :sugar_alcohols => 0, :protein => 5, :vitamin_a => 0, :vitamin_c => 0, :vitamin_d => 0, :calcium => 90, :iron => 1.6, :potassium => 40)
