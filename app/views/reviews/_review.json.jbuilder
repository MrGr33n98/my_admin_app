json.extract! review, :id, :company_id, :content, :rating, :date, :created_at, :updated_at
json.url review_url(review, format: :json)
