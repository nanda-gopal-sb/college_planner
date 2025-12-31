class User < ApplicationRecord
  has_secure_password
  has_many :semesters, dependent: :destroy
end
