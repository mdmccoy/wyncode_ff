class Picture < ApplicationRecord
  validates :url, :caption, presence: true
  validates_inclusion_of :rating, in: 1..5
  validates_format_of :url,
                      with: /\.(gif|jpe?g|png)/i,
                      message: 'must have an image extension'

  has_many :reviews
end
