class Review < ApplicationRecord
  validates :description, :picture_id, presence: true
  validates :author, presence: true, length: { maximum: 255 }
  validates_inclusion_of :rating, in: 1..5

  belongs_to :picture
end
