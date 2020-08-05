class Diary < ApplicationRecord
  has_many :user_diaries
  has_many :users, through: :user_diaries
  has_many :meals
end
