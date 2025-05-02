json.extract! company, :id, :name, :description, :location, :price_range, :website_url, :contact_email, :contact_phone, :created_at, :updated_at
json.url company_url(company, format: :json)
