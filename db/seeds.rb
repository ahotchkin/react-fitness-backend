# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(:username => "ally", :password_digest => "password", :gender => "female", :age => 30, :height_feet => 5, :height_inches => 5.75, :weight => 130.8)

exercise = Exercise.create(:user_id => 1, :category => "Cardio", :name => "Outdoor Run", :duration_in_minutes => 60, :calories_burned => 300)

diary = Diary.create(:date => 2020-01-01)

user_diary = UserDiary.create(:user_id => 1, :diary_id => 1)
