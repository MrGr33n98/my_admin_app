class Company < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged, slug_column: :seo_url

  # =============================
  # Relationships
  # =============================
  has_many :company_categories, dependent: :destroy
  has_many :categories, through: :company_categories
  has_many :leads, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :services, dependent: :destroy

  # =============================
  # Active Storage
  # =============================
  has_one_attached :logo
  has_one_attached :banner

  # =============================
  # Validations
  # =============================
  validates :name, presence: true
  validates :categories, presence: true
  validates :website_url, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "URL inválida" }, allow_blank: true
  validates :contact_email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :seo_url, presence: true, uniqueness: true

  # =============================
  # Scopes
  # =============================
  scope :active, -> { where(status: 'active') }
  scope :inactive, -> { where(status: 'inactive') }
  scope :starred, -> { where(starred: true) }
  scope :with_category, ->(category_id) {
    joins(:categories).where(categories: { id: category_id })
  }

  # =============================
  # Category helper methods
  # =============================
  def category_names
    categories.pluck(:name).join(', ')
  end

  def category_names=(names)
    self.categories = names.reject(&:blank?).map do |name|
      Category.find_or_create_by(name: name.strip)
    end
  end

  before_save :remove_duplicate_categories
  def remove_duplicate_categories
    self.categories = categories.uniq
  end

  # =============================
  # Ransack filters
  # =============================
  def self.ransackable_attributes(auth_object = nil)
    %w[
      name description location state city status price_range website_url
      contact_email contact_phone starred created_at updated_at seo_url
    ]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[
      categories company_categories leads reviews services
    ]
  end

  private

  # Regenerate slug if the name has changed
  def should_generate_new_friendly_id?
    name_changed? || super
  end
end
