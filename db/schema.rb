# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_05_015444) do

  create_table "diaries", force: :cascade do |t|
    t.integer "user_id", null: false
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_diaries_on_user_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.integer "user_id", null: false
    t.date "date"
    t.string "category"
    t.string "name"
    t.integer "duration_in_minutes"
    t.integer "calories_burned"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_exercises_on_user_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "brand_name"
    t.string "description"
    t.string "serving_size"
    t.float "servings_per_container"
    t.integer "calories"
    t.float "total_fat"
    t.float "saturated_fat", default: 0.0
    t.float "polyunsaturated_fat", default: 0.0
    t.float "monounsaturated_fat", default: 0.0
    t.float "trans_fat", default: 0.0
    t.float "cholesterol", default: 0.0
    t.float "sodium", default: 0.0
    t.float "total_carbohydrate"
    t.float "dietary_fiber", default: 0.0
    t.float "total_sugars", default: 0.0
    t.float "added_sugars", default: 0.0
    t.float "sugar_alcohols", default: 0.0
    t.float "protein"
    t.float "vitamin_a", default: 0.0
    t.float "vitamin_c", default: 0.0
    t.float "vitamin_d", default: 0.0
    t.float "calcium", default: 0.0
    t.float "iron", default: 0.0
    t.float "potassium", default: 0.0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_foods", force: :cascade do |t|
    t.integer "meal_id", null: false
    t.integer "food_id", null: false
    t.float "number_of_servings"
    t.integer "calories"
    t.float "total_fat"
    t.float "saturated_fat"
    t.float "polyunsaturated_fat"
    t.float "monounsaturated_fat"
    t.float "trans_fat"
    t.float "cholesterol"
    t.float "sodium"
    t.float "total_carbohydrate"
    t.float "dietary_fiber"
    t.float "total_sugars"
    t.float "added_sugars"
    t.float "sugar_alcohols"
    t.float "protein"
    t.float "vitamin_a"
    t.float "vitamin_c"
    t.float "vitamin_d"
    t.float "calcium"
    t.float "iron"
    t.float "potassium"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_meal_foods_on_food_id"
    t.index ["meal_id"], name: "index_meal_foods_on_meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "diary_id", null: false
    t.string "category"
    t.integer "calories", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diary_id"], name: "index_meals_on_diary_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "gender"
    t.integer "age"
    t.integer "height_feet"
    t.float "height_inches"
    t.float "weight"
    t.string "lifestyle"
    t.integer "daily_calorie_goal"
    t.integer "daily_fat_goal"
    t.integer "daily_saturated_fat_goal"
    t.integer "daily_polyunsaturated_fat_goal"
    t.integer "daily_monounsaturated_fat_goal"
    t.integer "daily_trans_fat_goal", default: 0
    t.integer "daily_cholesterol_goal", default: 300
    t.integer "daily_sodium_goal", default: 2300
    t.integer "daily_carbohydrate_goal"
    t.integer "daily_fiber_goal", default: 25
    t.integer "daily_sugar_goal"
    t.integer "daily_protein_goal"
    t.integer "daily_vitamin_a_goal"
    t.integer "daily_vitamin_c_fat_goal"
    t.integer "daily_vitamin_d_fat_goal"
    t.integer "daily_calcium_goal"
    t.integer "daily_iron_goal"
    t.integer "daily_potassium_goal", default: 4700
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "diaries", "users"
  add_foreign_key "exercises", "users"
  add_foreign_key "meal_foods", "foods"
  add_foreign_key "meal_foods", "meals"
  add_foreign_key "meals", "diaries"
end
