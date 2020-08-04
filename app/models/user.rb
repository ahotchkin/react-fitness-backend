class User < ApplicationRecord
  has_many :exercises
  has_secure_password
end
