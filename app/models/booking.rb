class Booking < ApplicationRecord
  has_many :teams
  has_many :user_bookings, dependent: :destroy
  has_many :users, :through => :user_bookings
  has_many :reviews, dependent: :destroy
  has_many :messages
  belongs_to :sport

  validates :status, inclusion: { in: ["pending", "confirm", "reject", "conclude"]}
  validates :date, presence: :true

  def start_time
    self.date
  end
end
