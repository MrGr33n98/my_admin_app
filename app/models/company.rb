# frozen_string_literal: true

# == Schema Information
# Table name: companies
#
#  id             :bigint           not null, primary key
#  name           :string           not null
#  description    :text
#  location       :string
#  state          :string
#  city           :string
#  price_range    :integer
#  website_url    :string
#  contact_email  :string
#  contact_phone  :string
#  status         :string           default("active"), not null
#  starred        :boolean          default(false)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
# NOTE: Adjust the schema comment above if your table differs.

require 'csv'

class Company < ApplicationRecord
  # =========================================================
  #  RELATIONSHIPS
  # =========================================================
  has_many :company_categories, dependent: :destroy
  has_many :categories, through: :company_categories

  has_many :leads,    dependent: :destroy
  has_many :reviews,  dependent: :destroy
  has_many :services, dependent: :destroy

  # Active Storage attachments
  has_one_attached :logo
  has_one_attached :banner

  # =========================================================
  #  VALIDATIONS
  # =========================================================
  validates :name, presence: true
  validates :categories, presence: true

  validates :website_url,
            format: { with: URI::DEFAULT_PARSER.make_regexp,
                      message: 'URL inválida' },
            allow_blank: true

  validates :contact_email,
            format: { with: URI::MailTo::EMAIL_REGEXP },
            allow_blank: true

  # =========================================================
  #  SCOPES
  # =========================================================
  scope :active,   -> { where(status: 'active') }
  scope :inactive, -> { where(status: 'inactive') }
  scope :starred,  -> { where(starred: true) }
  scope :with_category, ->(id) { joins(:categories).where(categories: { id: id }) }

  # =========================================================
  #  CATEGORY HELPERS
  # =========================================================
  def category_names
    categories.pluck(:name).join(', ')
  end

  def category_names=(names)
    sanitized = Array(names).reject(&:blank?).map { |n| n.strip }
    self.categories = sanitized.map { |n| Category.find_or_create_by(name: n) }
  end

  before_save :dedup_categories
  def dedup_categories = self.categories = categories.uniq

  # =========================================================
  #  CSV IMPORT — Returns { imported: x, errors: [] }
  # =========================================================
  def self.import_csv(file)
    imported = 0
    errors   = []

    CSV.foreach(file.path, headers: true, encoding: 'UTF-8') do |row|
      begin
        attrs = row.to_h.symbolize_keys.slice(
          :name, :description, :location, :state, :city,
          :price_range, :website_url, :contact_email, :contact_phone, :status
        )

        company = find_or_initialize_by(name: attrs[:name])
        company.assign_attributes(attrs)

        # --- Optional: link categories from "categories" column
        if row['categories'].present?
          cat_names = row['categories'].split(';').map(&:strip).reject(&:blank?)
          company.categories = cat_names.map { |n| Category.find_or_create_by(name: n) }
        end

        if company.save
          imported += 1
        else
          errors << { row: row.to_h, messages: company.errors.full_messages }
        end

      rescue StandardError => e
        errors << { row: row.to_h, messages: ["Exception: #{e.message}"] }
        Rails.logger.warn "Erro na linha #{row.inspect}: #{e.message}"
      end
    end

    { imported: imported, errors: errors }
  end

  # =========================================================
  #  RANSACK (ActiveAdmin) — whitelist searchable fields
  # =========================================================
  def self.ransackable_attributes(_auth_object = nil)
    %w[
      name description location state city status price_range website_url
      contact_email contact_phone starred created_at updated_at
    ]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[categories company_categories leads reviews services]
  end
end
