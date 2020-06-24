class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :avatar
  has_many :user_teams
  has_many :messages
  has_many :user_sports, :dependent => :destroy
  has_many :availabilities, dependent: :destroy
  has_many :user_bookings, dependent: :destroy
  has_many :sports, :through => :user_sports
  has_many :conversations, :through => :messages
  has_many :bookings, :through => :user_bookings, dependent: :destroy
  has_many :teams, :through => :user_teams
  has_many :reviewees, class_name: "Review", foreign_key: "reviewee_id", dependent: :destroy
  has_many :reviewers, class_name: "Review", foreign_key: "reviewer_id", dependent: :destroy
end
