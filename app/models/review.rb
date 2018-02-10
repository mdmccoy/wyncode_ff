class Review < ApplicationRecord
  validates :description, :author, :picture_id, presence: true
  validates_inclusion_of :rating, :in => 1..5
  belongs_to :picture
end
