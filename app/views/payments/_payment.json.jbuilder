json.extract! payment, :id, :category_id, :category_type, :created_at, :updated_at
json.url payment_url(payment, format: :json)
