class Volunteer < ApplicationRecord
  has_many :jobs
  has_many :roles, through: :jobs

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :admission_period, presence: true
  validates :career, presence: true
end
