class Job < ApplicationRecord
  belongs_to :poster, class_name: "User"
  belongs_to :mover, class_name: "User", optional: true

  has_many :furniture_jobs
  has_many :furnitures, through: :furniture_jobs
  has_many :reviews
  validates :title, presence: true
  validate :time_validation, :furniture_validation

  accepts_nested_attributes_for :furnitures

  def time_validation
    if date < Time.now
      errors.add(:date, "can't be in the past")
    end
  end

  def furniture_validation
    if self.furnitures.empty?
      errors.add(:furniture, "can't be empty")
    end
  end
end
