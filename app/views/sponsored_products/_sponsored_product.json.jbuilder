json.extract! sponsored_product, :id, :company_id, :product_name, :start_date, :end_date, :price_paid, :status, :created_at, :updated_at
json.url sponsored_product_url(sponsored_product, format: :json)
