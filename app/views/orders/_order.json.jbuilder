json.extract! order, :id, :user_id, :quantity, :price, :otype, :created_at, :updated_at
json.url order_url(order, format: :json)
