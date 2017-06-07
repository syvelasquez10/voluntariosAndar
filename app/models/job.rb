class Job < ApplicationRecord
  belongs_to :volunteer
  belongs_to :role

  def validate_final_date
    if final_date < initial_date
      errors.add(:final_date, "can't be before the initial date")
    end
  end
end
