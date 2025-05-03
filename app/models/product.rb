class Product < ApplicationRecord
    has_many :plans
    has_many :articles
  
    # Imagens via Active Storage
    has_one_attached :logo
    has_one_attached :banner
    has_many_attached :portfolio_images # caso use portfólio de imagens
  
    enum status: {
      active: "active",
      inactive: "inactive",
      archived: "archived"
    }, _prefix: :product
  
    def self.ransackable_attributes(auth_object = nil)
        [
          "id", "name", "description", "status", "city", "state", "website",
          "created_at", "updated_at"
        ]
      end
      
  
    def self.ransackable_associations(auth_object = nil)
      ["plans", "articles"]
    end
  
    def to_s
      name
    end
  end
  