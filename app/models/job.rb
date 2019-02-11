class Job < ApplicationRecord
  has_many :reviews
  has_many :furnitures
  has_many :jobs, through: :furnitures
end
