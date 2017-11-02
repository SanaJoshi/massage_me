json.extract! product, :id, :image_data, :name, :price, :discription, :created_at, :updated_at
json.url product_url(product, format: :json)
