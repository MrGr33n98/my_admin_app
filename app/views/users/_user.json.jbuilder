json.extract! user, :id, :name, :email, :primary_phone, :secondary_phone, :company_name, :admin, :email_confirmed, :created_at, :updated_at
json.url user_url(user, format: :json)
