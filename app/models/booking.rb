class Booking < ApplicationRecord
  has_many :teams
  has_many :user_bookings, dependent: :destroy
  has_many :users, :through => :user_bookings
  has_many :reviews, dependent: :destroy
  has_many :messages, dependent: :destroy
  belongs_to :sport

  validates :status, inclusion: { in: ["pending", "confirm", "reject", "conclude"]}
  validates :date, presence: :true
  # validate :unique_booking?

  def start_time
    self.date
  end

  def unique_booking?
    active_bookings = Booking.where.not( status: ['conclude', 'reject'] )
    active_bookings.each do |active_booking|
      errors.add(:booking, "must be a unique booking") if  (users.sort == active_booking.users.sort)
      
    end
  end

  
end
