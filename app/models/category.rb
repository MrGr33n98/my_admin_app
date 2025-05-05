require 'csv'

class Category < ApplicationRecord
  # ==========================
  # Relacionamentos
  # ==========================
  has_many :subcategories, class_name: 'Category', foreign_key: 'parent_id', dependent: :destroy
  belongs_to :parent, class_name: 'Category', optional: true

  # 🔧 Altere aqui para permitir que ao deletar uma categoria, as relações com companies sejam apagadas também:
  has_many :company_categories, dependent: :destroy
  has_many :companies, through: :company_categories

  # ==========================
  # Métodos de Exibição
  # ==========================
  def full_name
    parent ? "#{parent.name} > #{name}" : name
  end

  # ==========================
  # Ransack (para ActiveAdmin)
  # ==========================
  def self.ransackable_attributes(_auth_object = nil)
    %w[
      id name description short_description seo_title seo_url
      parent_id kind featured status created_at updated_at
    ]
  end

  def self.ransackable_associations(_auth_object = nil)
    %w[parent subcategories companies]
  end

  # ==========================
  # Importação via CSV
  # ==========================
  def self.import_from_csv(file)
    imported = 0
    errors = []

    CSV.foreach(file.path, headers: true, encoding: 'bom|utf-8') do |row|
      begin
        category = find_or_initialize_by(name: row['name'].to_s.strip)
        category.assign_attributes(
          description:         row['description'],
          short_description:   row['short_description'],
          seo_title:           row['seo_title'],
          seo_url:             row['seo_url'],
          parent_id:           row['parent_id'].presence,
          kind:                row['kind'],
          status:              row['status']
        )

        if category.save
          imported += 1
        else
          errors << " '#{row['name']}' — #{category.errors.full_messages.join(', ')}"
        end
      rescue => e
        errors << " Linha com erro: #{row.to_h.inspect} — #{e.class}: #{e.message}"
      end
    end

    Rails.logger.info  " Importadas com sucesso: #{imported} categorias"
    errors.each { |e| Rails.logger.warn e }

    { imported: imported, errors: errors }
  end
end
