module PicturesHelper
  def street_view(picture, _type)
    # need to add logic here to handle different address types
    unless picture.location.empty?
      parsed_loc = picture.location.gsub(/[,]/, '').gsub(/\W/, '+')
      geocoded_loc = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{parsed_loc}&key=#{ENV['GOOGLE_GEOCODE_KEY']}")['results'][0]['geometry']['location']
      lat = geocoded_loc['lat']
      lng = geocoded_loc['lng']

      if _type == 'streetview'
        url = "https://www.google.com/maps/embed/v1/#{_type}?key=#{ENV['GOOGLE_MAPS_KEY_FF']}&location=#{lat},#{lng}"
      else
        url = "https://www.google.com/maps/embed/v1/place?key=#{ENV['GOOGLE_MAPS_KEY_FF']}&q=#{parsed_loc}"
        end
      # binding.pry
      content_tag(:iframe, '', src: url, width: 560, height: 315, class: 'embed-responsive-item')
    end
  end

  def average_rating(picture)
    avg_rating = picture.rating
    reviews = Review.where(picture_id: picture.id)
    reviews.each do |review|
      avg_rating += review.rating
    end
    reviews.count.zero? ? avg_rating = picture.rating : avg_rating /= reviews.count + 1
    picture.rating = avg_rating
    picture.save
    html = draw_stars(avg_rating)
    html.html_safe
  end

  def draw_stars(rating)
    html = ''
    rating.times do
      html += content_tag(:span, content_tag(:i, '', class: 'fa fa-star'), class: 'star')
    end
    html.html_safe
  end

  def url_or_attachment(picture, thumbnail=false)
    if picture.url.blank?
      thumbnail ? picture.attachment.url(:thumb) : picture.attachment.url
    else
      picture.url
    end
  end
end
