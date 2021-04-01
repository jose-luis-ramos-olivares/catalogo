json.extract! stripe, :id, :created_at, :updated_at
json.url stripe_url(stripe, format: :json)
