class Picture < ApplicationRecord
  RATING_VALS = [1, 2, 3, 4, 5].freeze

  validates :url, length: { maximum: 255 }
  validates :caption, presence: true, length: { maximum: 255 }
  validates_inclusion_of :rating, in: 1..5
  # validates_format_of :url,
  #                     with: /\.(gif|jpe?g|png)/i,
  #                     message: 'must have an image extension'

  has_many :reviews
  has_attached_file :attachment, default_url: 'missing.png', styles: { thumb: '150x150#' }, convert_options: {
    thumb: '-quality 75 -strip'
  }
  validates_attachment_content_type :attachment, content_type: /\Aimage\/.*\z/

  def picture_remote_url=(url_value)
    self.attachment = URI.parse(url_value)
    # Assuming url_value is http://example.com/photos/face.png
    # avatar_file_name == "face.png"
    # avatar_content_type == "image/png"
    @avatar_remote_url = url_value
  end
end
