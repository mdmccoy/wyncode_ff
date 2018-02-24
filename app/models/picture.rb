class Picture < ApplicationRecord
  RATING_VALS = [1, 2, 3, 4, 5].freeze

  validates :url, length: { maximum: 255 }
  validates :caption, presence: true, length: { maximum: 255 }
  validates_inclusion_of :rating, in: 1..5
  # validates_format_of :url,
  #                     with: /\.(gif|jpe?g|png)/i,
  #                     message: 'must have an image extension'

  has_many :reviews
  has_attached_file :attachment, default_url: 'missing.png', :styles =>{ thumb: '100x100#' }, :convert_options => {
    :thumb => "-quality 75 -strip" }
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\z/
end
