class User < ApplicationRecord
  has_many :exercises
  has_many :user_diaries
  has_many :diaries, through: :user_diaries
  has_secure_password
end
