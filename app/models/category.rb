class Category < ApplicationRecord
    has_many :subcategories, class_name: 'Category', foreign_key: 'parent_id', dependent: :destroy
    belongs_to :parent, class_name: 'Category', optional: true
  
    has_many :company_categories
    has_many :companies, through: :company_categories
  
    def full_name
      parent ? "#{parent.name} > #{name}" : name
    end
  
    # Adicionando os métodos exigidos pelo Ransack
    def self.ransackable_attributes(auth_object = nil)
      %w[
        id name description short_description seo_title seo_url
        parent_id kind featured status created_at updated_at
      ]
    end
  
    def self.ransackable_associations(auth_object = nil)
      %w[parent subcategories companies]
    end
  end
  