class Member < ApplicationRecord
  belongs_to :company

  def self.ransackable_attributes(auth_object = nil)
    %w[name status company_id created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[company]
  end
end
