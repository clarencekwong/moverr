# class Job < ApplicationRecord
#   has_many :reviews
#   has_many :furnitures
#   has_many :jobs, through: :furnitures
# end



class Job < ApplicationRecord
  has_many :posters, class_name: 'User'
  has_many :accepters, class_name: 'User'
end
