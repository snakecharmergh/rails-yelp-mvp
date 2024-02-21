class Review < ApplicationRecord
  # When a restaurant is destroyed, all of its reviews must be destroyed as well
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { in: 0..5, only_integer: true }
end
