class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :reviewer, class_name: "User"
  belongs_to :reviewee, class_name: "User"

  validates :content, presence: true, length: {maximum: 1000}
  validates :rating, presence: true, inclusion: { in: 1..5 }
end
