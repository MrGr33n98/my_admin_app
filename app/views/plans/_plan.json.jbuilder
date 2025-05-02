json.extract! plan, :id, :name, :description, :price, :billing_cycle, :active, :created_at, :updated_at
json.url plan_url(plan, format: :json)
