json.extract! product_access, :id, :member_id, :product_name, :access_level, :granted_at, :revoked_at, :created_at, :updated_at
json.url product_access_url(product_access, format: :json)
