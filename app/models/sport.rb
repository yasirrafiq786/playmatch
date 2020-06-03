class Sport < ApplicationRecord
  has_many :user_sports
  has_many :users, :through => :user_sports
  has_many :availabilities
  has_many :bookings
  has_one_attached :photo
end
