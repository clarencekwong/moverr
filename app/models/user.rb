class User < ApplicationRecord
  has_secure_password
  validates :username, :name, :email, :phone_number, presence: true
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
    self.other_people_ratings_for_my_jobs.inject(0.0) { |sum, el| sum + el } / self.other_people_ratings_for_my_jobs.size
  end

  def my_jobs
    my_list_of_jobs = []
    my_list_of_jobs << self.mover_jobs
    my_list_of_jobs << self.posted_jobs
    my_list_of_jobs.flatten
  end

  def other_people_ratings_for_my_jobs
    ratings = []
    self.my_jobs.each do |job|
      job.reviews.where.not(user_id: self.id).each do |review|
        ratings << review.rating
      end
    end
    ratings
  end
end
