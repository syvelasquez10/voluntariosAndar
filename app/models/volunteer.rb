class Volunteer < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :jobs
  has_many :roles, through: :jobs

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :admission_period, presence: true
  validates :career, presence: true

  def to_s
    name
  end
end
