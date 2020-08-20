class DiarySerializer
  include FastJsonapi::ObjectSerializer
  attributes :date, :meals

  belongs_to :user
end
