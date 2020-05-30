class Sport < ApplicationRecord
  # belongs_to :user  ORIGINAL
  has_many :user_sports
  has_many :users, :through => :user_sports
  has_many :availabilities
  has_many :bookings
end
