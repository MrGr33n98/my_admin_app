class ProductAccess < ApplicationRecord
  belongs_to :member

  # Permite pesquisa via filtros no ActiveAdmin
  def self.ransackable_associations(_auth_object = nil)
    ["member"]
  end

  def self.ransackable_attributes(_auth_object = nil)
    %w[id member_id product_name access_level granted_at revoked_at created_at updated_at]
  end

  # 🔧 Escopos que o ActiveAdmin pode usar
  scope :approved, -> { where(access_level: 'approved') }
  scope :canceled, -> { where(access_level: 'canceled') }
  scope :pending, -> { where(access_level: 'pending') }
end
