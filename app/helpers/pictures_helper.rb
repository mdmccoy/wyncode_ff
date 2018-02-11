module PicturesHelper
  def street_view(picture)
    unless picture.location.empty?
      url = "https://www.google.com/maps/embed/v1/streetview?key=AIzaSyDVugT7KHG7KbKHLFjQBmaytGDi4S4qAB0&location=#{picture.location}"
      content_tag(:iframe, '', src: url, width: 560, height: 315, frameborder: 0)
    end
  end

  def average_rating(picture)
    html = ''
    avg_rating = picture.rating
    reviews = Review.where(picture_id: picture.id)
    reviews.each do |review|
      avg_rating += review.rating
    end
    reviews.count.zero? ? avg_rating = 0 : avg_rating /= reviews.count + 1
    avg_rating.times do
      html += content_tag(:span, content_tag(:i, '', class: 'fa fa-star'), class: 'star')
      # content_tag(:p, 'test')
    end
    html.html_safe
  end
end
