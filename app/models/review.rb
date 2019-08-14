class Review < ApplicationRecord
  belongs_to :restaurant
  # A review must have content and a rating. The rating should be a number between 0 and 5.
  validates :content, presence: true
  validates :rating, presence: true
end
