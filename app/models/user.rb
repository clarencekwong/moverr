class User < ApplicationRecord
  has_secure_password
  validates :username, :name, presence: true
  validates :username, :email, :phone_number, uniqueness: true

  has_many :posted_jobs, class_name: "Job", foreign_key: "poster_id"
  has_many :mover_jobs, class_name: "Job", foreign_key: "mover_id"

  has_many :reviews

  def jobs_posted
    self.posted_jobs.where(:status => 'Completed').count
  end

  def jobs_moved
    self.mover_jobs.where(:status => 'Completed').count
  end

  def user_rating
    self.reviews.average(:rating)
  end
end
