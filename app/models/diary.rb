class Diary < ApplicationRecord
  belongs_to :user
  has_many :meals

  validates_uniqueness_of :date, :scope => [:user_id]
end
