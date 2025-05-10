class SponsoredProduct < ApplicationRecord
  belongs_to :company

  validates :product_name, presence: true
  validates :start_date, :end_date, presence: true

  # Scopes para filtros por status
  scope :ativos, -> {
    where("start_date <= ? AND end_date >= ?", Date.today, Date.today)
  }

  scope :pendentes, -> {
    where("start_date > ?", Date.today)
  }

  scope :expirados, -> {
    where("end_date < ?", Date.today)
  }

  # Status dinâmico
  def status
    today = Date.today
    return 'pending' if today < start_date
    return 'expired' if today > end_date
    'active'
  end

  def active?
    status == 'active'
  end

  # ActiveAdmin – permite busca
  def self.ransackable_attributes(_auth_object = nil)
    %w[id company_id product_name start_date end_date price_paid created_at updated_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[company]
  end
end
