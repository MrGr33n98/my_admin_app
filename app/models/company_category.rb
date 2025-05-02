class CompanyCategory < ApplicationRecord
  belongs_to :company
  belongs_to :category

  validates :company_id, uniqueness: { scope: :category_id }
end
