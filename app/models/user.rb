class User < ApplicationRecord
  has_secure_password

  has_many :posted_jobs, class_name: "Job", foreign_key: "poster_id"
  has_many :mover_jobs, class_name: "Job", foreign_key: "mover_id"
end
