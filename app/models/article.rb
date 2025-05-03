class Article < ApplicationRecord
  belongs_to :category
  belongs_to :product

  # Evita erro no ActiveAdmin com Ransack
  def self.ransackable_attributes(auth_object = nil)
    ["id", "title", "content", "category_id", "product_id", "created_at", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["category", "product"]
  end
end
