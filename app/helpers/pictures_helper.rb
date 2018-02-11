module PicturesHelper
  def street_view(picture)
    unless picture.location.empty?
      url = "https://www.google.com/maps/embed/v1/streetview?key=AIzaSyDVugT7KHG7KbKHLFjQBmaytGDi4S4qAB0&location=#{picture.location}"
      content_tag(:iframe, '', src: url, width: 560, height: 315, frameborder: 0)
    end
  end
end
