class User < ApplicationRecord
  has_secure_password
  has_many :exercises
  has_many :diaries

  validates :username, :gender, :lifestyle, presence: true
  validates :username, uniqueness: true
  validates :age, :numericality => { :only_integer => true, :greater_than_or_equal_to => 18, message: "must be 18 or older to sign up" }
  validates :height_feet, :numericality => { :only_integer => true, :greater_than => 0 }
  validates :height_inches, :numericality => { :only_float => true }
  validates :weight, :numericality => { :only_float => true, :greater_than => 0 }
end

  # add validation for gender? or not needed because form is drop down?
