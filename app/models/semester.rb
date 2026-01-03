class Semester < ApplicationRecord
  belongs_to :user
  has_many :subjects
end
