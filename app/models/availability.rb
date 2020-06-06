class Availability < ApplicationRecord
  belongs_to :user
  belongs_to :sport

  validates :start_time, presence: :true
  validates :end_time, presence: :true
  validate :start_time_cannot_be_after_end_time

  def start_time_cannot_be_after_end_time
    if start_time > end_time
      errors.add(:start_time, "cannot be after the end date")
    end
  end
end
