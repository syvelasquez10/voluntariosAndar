class Role < ApplicationRecord
  has_many :jobs
  has_many :volunteers, through: :jobs

  validates :title, presence: true, uniqueness: true
  validates :maximum_work_hours, numericality: { greater_than_or_equal_to: 0 }
  validates :minimum_work_hours, numericality: { greater_than_or_equal_to: 0 }

  validate :validate_maximum_work_hours

  def validate_maximum_work_hours
    if maximum_work_hours < minimum_work_hours
      errors.add(:maximum_work_hours, "can't be greater than the number of maximum work hours")
    end
  end

  def to_s
    title
  end
end
