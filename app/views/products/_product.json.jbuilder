json.extract! product, :id, :name, :price_in_cent, :created_at, :updated_at
json.url product_url(product, format: :json)
