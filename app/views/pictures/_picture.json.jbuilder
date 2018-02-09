json.extract! picture, :id, :url, :rating, :caption, :location, :created_at, :updated_at
json.url picture_url(picture, format: :json)
