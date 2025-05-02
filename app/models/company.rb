class Company < ApplicationRecord
    has_many :company_categories, dependent: :destroy
    has_many :categories, through: :company_categories
  end
  