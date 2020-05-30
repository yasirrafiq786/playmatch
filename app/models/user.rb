class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_teams
  has_many :messages
  has_many :user_sports, :dependent => :destroy
  has_many :availabilities
  has_many :user_bookings
  has_many :sports, :through => :user_sports
  has_many :conversations, :through => :messages
  has_many :bookings, :through => :user_bookings
  has_many :teams, :through => :user_teams

end
