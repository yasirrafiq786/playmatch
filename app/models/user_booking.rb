class UserBooking < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  validates_uniqueness_of :booking, scope: :user
end
