json.extract! member, :id, :name, :email, :role, :company_id, :status, :joined_at, :created_at, :updated_at
json.url member_url(member, format: :json)
