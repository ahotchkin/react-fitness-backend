class User < ApplicationRecord
  has_secure_password
  has_many :exercises
  has_many :diaries

  validates :username, :gender, :age, :height_feet, :height_inches, :weight, presence: true
  validates :username, uniqueness: true
end

  # t.integer "daily_calorie_goal"
  # add validation for gender? or not needed because form is drop down?
  # age must be 18 or older
  # calorie goal must never be lower than 1200 per day
