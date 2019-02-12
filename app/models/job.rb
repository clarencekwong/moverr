class Job < ApplicationRecord
  belongs_to :poster, class_name: "User"
  belongs_to :mover, class_name: "User", optional: true
  has_many :furniture_jobs
  has_many :furnitures, through: :furniture_jobs

  accepts_nested_attributes_for :furnitures
end
