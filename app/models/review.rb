class Review < ApplicationRecord
  validates :description, :author, :rating, :picture_id, presence: true
  belongs_to :picture
end
