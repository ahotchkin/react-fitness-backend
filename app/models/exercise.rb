class Exercise < ApplicationRecord
  belongs_to :user

  # Currently only need user, date, and calories burned, but additional information would be nice to give user exercise recaps at the end of each week
  validates :user, :date, presence: true
  validates :category, inclusion: { in: %w(cardio strength balance stretching), message: "%{value} is not a valid category" }
  validates :duration_in_minutes, :calories_burned, :numericality => { :only_integer => true, :greater_than => 0 }

end
