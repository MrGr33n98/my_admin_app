class Company < ApplicationRecord
    # =============================
    # Relacionamentos
    # =============================
  
    # Relacionamentos com categorias (many-to-many via join table)
    has_many :company_categories, dependent: :destroy
    has_many :categories, through: :company_categories
  
    # Relacionamentos com outras entidades
    has_many :leads, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_many :services, dependent: :destroy
  
    # =============================
    # Active Storage para imagens
    # =============================
    has_one_attached :logo
    has_one_attached :banner
  
    # =============================
    # Validações
    # =============================
    validates :name, presence: true
    validates :categories, presence: true
    validates :website_url, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "URL inválida" }, allow_blank: true
    validates :contact_email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  
    # =============================
    # Scopes úteis
    # =============================
    scope :active, -> { where(status: 'active') }
    scope :inactive, -> { where(status: 'inactive') }
    scope :starred, -> { where(starred: true) }
    scope :with_category, ->(category_id) {
      joins(:categories).where(categories: { id: category_id })
    }
  
    # =============================
    # Métodos auxiliares para categorias
    # =============================
  
    # Exibe os nomes das categorias como string
    def category_names
      categories.pluck(:name).join(', ')
    end
  
    # Permite atribuição por nomes (ex: via API ou importação CSV)
    def category_names=(names)
      self.categories = names.reject(&:blank?).map do |name|
        Category.find_or_create_by(name: name.strip)
      end
    end
  
    # Evita duplicidade de categorias na associação
    before_save :remove_duplicate_categories
  
    def remove_duplicate_categories
      self.categories = categories.uniq
    end
  
    # =============================
    # Para filtros no ActiveAdmin (Ransack)
    # =============================
  
    def self.ransackable_attributes(auth_object = nil)
      %w[
        name description location state city status price_range website_url
        contact_email contact_phone starred created_at updated_at
      ]
    end
  
    def self.ransackable_associations(auth_object = nil)
      %w[
        categories company_categories leads reviews services
      ]
    end
  end
  