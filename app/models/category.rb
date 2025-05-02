class Category < ApplicationRecord
    has_many :company_categories, dependent: :destroy
    has_many :companies, through: :company_categories
    belongs_to :parent, class_name: "Category", optional: true
  
    # Permite que Ransack use esses atributos nos filtros de busca do ActiveAdmin
    def self.ransackable_attributes(auth_object = nil)
      [
        "id", "name", "seo_url", "seo_title", "short_description", "description",
        "parent_id", "kind", "status", "featured", "created_at", "updated_at"
      ]
    end
  
    def self.ransackable_associations(auth_object = nil)
      ["parent", "company_categories", "companies"]
    end
  end
  