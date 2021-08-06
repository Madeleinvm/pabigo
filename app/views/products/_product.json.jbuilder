json.extract! product, :id, :name, :description, :product_type, :qty, :users_id, :created_at, :updated_at
json.url product_url(product, format: :json)
