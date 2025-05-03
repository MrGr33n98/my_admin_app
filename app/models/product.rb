class Product < ApplicationRecord
    has_many :plans
    has_many :articles
  
    # Define enum com prefixo para evitar conflito com métodos existentes
    enum status: {
      active: "active",
      inactive: "inactive",
      archived: "archived"
    }, _prefix: :product
  
    def self.ransackable_attributes(auth_object = nil)
      ["id", "name", "description", "status", "created_at", "updated_at"]
    end
  
    def self.ransackable_associations(auth_object = nil)
      ["plans", "articles"]
    end
  
    def to_s
      name
    end
  end
  