class Category < ApplicationRecord
    has_many :subcategories, class_name: 'Category', foreign_key: 'parent_id', dependent: :destroy
    belongs_to :parent, class_name: 'Category', optional: true
  
    has_many :company_categories
    has_many :companies, through: :company_categories
  
    def full_name
      parent ? "#{parent.name} > #{name}" : name
    end
  end
  