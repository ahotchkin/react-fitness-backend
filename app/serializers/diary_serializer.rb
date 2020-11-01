class DiarySerializer
  include FastJsonapi::ObjectSerializer

  attributes :date

  belongs_to :user
end
