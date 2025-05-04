class CompanyCategory < ApplicationRecord
  belongs_to :company
  belongs_to :category

  # Permite filtros e uso no ActiveAdmin (Ransack)
  def self.ransackable_attributes(auth_object = nil)
    %w[company_id category_id created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[company category]
  end
end
