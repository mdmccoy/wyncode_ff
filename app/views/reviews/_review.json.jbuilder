json.extract! review, :id, :description, :author, :rating, :picture_id, :created_at, :updated_at
json.url review_url(review, format: :json)
