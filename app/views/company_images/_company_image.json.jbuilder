json.extract! company_image, :id, :company_id, :image_type, :created_at, :updated_at
json.url company_image_url(company_image, format: :json)
