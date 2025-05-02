json.extract! lead, :id, :company_id, :lead_type, :client_name, :client_email, :client_phone, :date, :value, :created_at, :updated_at
json.url lead_url(lead, format: :json)
