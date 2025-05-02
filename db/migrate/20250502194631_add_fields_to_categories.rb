class AddFieldsToCategories < ActiveRecord::Migration[7.1]
  def change
    add_column :categories, :seo_url, :string
    add_column :categories, :seo_title, :string
    add_column :categories, :short_description, :text
    add_column :categories, :description, :text
    add_column :categories, :parent_id, :integer
    add_column :categories, :kind, :string
    add_column :categories, :status, :string
    add_column :categories, :featured, :boolean
  end
end
