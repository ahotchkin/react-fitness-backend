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
    t.integer "servings_per_container"
    t.integer "calories"
    t.integer "total_fat"
    t.integer "saturated_fat"
    t.integer "polyunsaturated_fat"
    t.integer "monounsaturated_fat"
    t.integer "trans_fat"
    t.integer "cholesterol"
    t.integer "sodium"
    t.integer "total_carbohydrate"
    t.integer "dietary_fiber"
    t.integer "total_sugars"
    t.integer "added_sugars"
    t.integer "sugar_alcohols"
    t.integer "protein"
    t.integer "vitamin_a"
    t.integer "vitamin_c"
    t.integer "vitamin_d"
    t.integer "calcium"
    t.integer "iron"
    t.integer "potassium"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_foods", force: :cascade do |t|
    t.integer "meal_id", null: false
    t.integer "food_id", null: false
    t.float "number_of_servings"
    t.integer "calories"
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
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "diaries", "users"
  add_foreign_key "exercises", "users"
  add_foreign_key "meal_foods", "foods"
  add_foreign_key "meal_foods", "meals"
  add_foreign_key "meals", "diaries"
end
