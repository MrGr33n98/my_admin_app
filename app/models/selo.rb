class Selo < ApplicationRecord
    has_one_attached :image
  
    def self.ransackable_attributes(auth_object = nil)
      %w[id name description position year edition category created_at updated_at]
    end
  end
  