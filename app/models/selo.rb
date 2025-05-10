class Selo < ApplicationRecord
  has_one_attached :image

  def self.ransackable_attributes(_auth_object = nil)
    %w[id name description position year edition category products created_at updated_at]
  end
end
