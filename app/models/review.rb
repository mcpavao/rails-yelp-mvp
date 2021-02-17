class Review < ApplicationRecord
  belongs_to :restaurants
  validates :content, presence: true
  validates :rating, numericality: true, inclusion: { in: (0..5) }
end
