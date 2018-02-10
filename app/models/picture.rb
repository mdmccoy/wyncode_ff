class Picture < ApplicationRecord
  validates :url, :rating, presence: true

  has_many :reviews
end
