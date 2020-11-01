class Exercise < ApplicationRecord
  belongs_to :user

  validates :user, :date, presence: true
  validates :category, inclusion: { in: %w(cardio strength balance stretching), message: "%{value} is not a valid category" }
  validates :duration_in_minutes, :calories_burned, :numericality => { :only_integer => true, :greater_than => 0 }
end
