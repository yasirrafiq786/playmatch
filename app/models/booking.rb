class Booking < ApplicationRecord
  # belongs_to :author, class_name: "User"
  has_many :teams
  has_many :user_bookings, dependent: :destroy
  has_many :users, :through => :user_bookings
  has_many :reviews
  belongs_to :sport

  validates :status, inclusion: { in: ["pending", "confirm", "reject", "conclude"]}
end
