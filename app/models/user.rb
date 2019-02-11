class User < ApplicationRecord
  has_many :furnitures
  has_many :jobs, through: :furnitures
end
