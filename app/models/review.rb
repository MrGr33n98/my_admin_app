class Review < ApplicationRecord
  belongs_to :company

  # Enum de status com prefixo
  enum status: {
    canceled: 0,
    initiated: 1,
    pending_approval: 2,
    waiting_user_review: 3,
    approved: 4
  }, _prefix: true

  # Validações
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates :content, presence: true
  validates :date, presence: true

  # Scopes para ActiveAdmin (compatíveis com enum com prefixo)
  scope :canceled, -> { status_canceled }
  scope :initiated, -> { status_initiated }
  scope :pending_approval, -> { status_pending_approval }
  scope :waiting_user_review, -> { status_waiting_user_review }
  scope :approved, -> { status_approved }

  # Outros scopes úteis
  scope :pending, -> { where(status: [:initiated, :pending_approval]) }
  scope :recent, -> { order(date: :desc) }

  # Ransack
  def self.ransackable_attributes(_auth_object = nil)
    %w[id company_id content rating status date created_at]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[company]
  end

  # Métodos de instância
  def approve!
    update(status: :approved)
  end

  def pending?
    status_initiated? || status_pending_approval?
  end
end
