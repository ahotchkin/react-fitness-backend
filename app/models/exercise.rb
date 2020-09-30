class Exercise < ApplicationRecord
  belongs_to :user

  # do I really need anything except calories_burned???
  validates :user, :date, :category, :name, :duration_in_minutes, :calories_burned, presence: true
end

# add validation for exercise category? or not needed because form is drop down?
