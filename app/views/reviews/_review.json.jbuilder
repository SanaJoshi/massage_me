json.extract! review, :id, :user_id, :product_id, :comment, :rating, :created_at, :updated_at
json.url review_url(review, format: :json)
