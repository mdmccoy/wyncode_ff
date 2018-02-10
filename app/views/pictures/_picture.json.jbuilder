json.extract! picture, :id, :url, :caption, :location, :rating, :created_at, :updated_at
json.url picture_url(picture, format: :json)
