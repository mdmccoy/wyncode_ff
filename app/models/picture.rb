class Picture < ApplicationRecord
  validates :url, :rating, :caption, presence: true

  has_many :reviews
end
