class SponsoredProduct < ApplicationRecord
  belongs_to :company

  validates :product_name, presence: true
  validates :start_date, :end_date, presence: true

  # Status dinâmico
  def status
    today = Date.today
    return 'pending' if today < start_date
    return 'expired' if today > end_date
    'active'
  end

  # Para filtrar produtos ativos no frontend
  scope :active, -> {
    where("start_date <= ? AND end_date >= ?", Date.today, Date.today)
  }

  def active?
    status == 'active'
  end

  def self.ransackable_attributes(auth_object = nil)
    %w[id company_id product_name start_date end_date price_paid created_at updated_at]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[company]
  end
end
