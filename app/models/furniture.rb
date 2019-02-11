class Furniture < ApplicationRecord
  has_many :furniture_jobs
  has_many :jobs, through: :furniture_jobs
end
