# class User < ApplicationRecord
#   has_many :furnitures
#   has_many :jobs, through: :furnitures
# end


class User < ApplicationRecord
  has_many :posted_jobs, class_name: "Job", foreign_key: "poster_id"
  has_many :mover_jobs, class_name: "Job", foreign_key: "mover_id"
end
