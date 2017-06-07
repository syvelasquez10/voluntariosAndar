class Volunteer < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :admission_period, presence: true
  validates :career, presence: true
end
