class Review < ApplicationRecord
  RATING_VALS = [1, 2, 3, 4, 5].freeze

  validates :description, :picture_id, presence: true
  validates :author, presence: true, length: { maximum: 255 }
  validates_inclusion_of :rating, in: 1..5

  belongs_to :picture
end
