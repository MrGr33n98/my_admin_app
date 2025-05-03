class Review < ApplicationRecord
  belongs_to :company

  enum status: {
    canceled: 0,
    initiated: 1,
    pending_approval: 2,
    waiting_user_review: 3,
    approved: 4
  }

  def self.ransackable_attributes(_auth_object = nil)
    %w[id company_id content rating status date created_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[company]
  end
end
