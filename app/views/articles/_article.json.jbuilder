json.extract! article, :id, :title, :content, :category_id, :product_id, :created_at, :updated_at
json.url article_url(article, format: :json)
