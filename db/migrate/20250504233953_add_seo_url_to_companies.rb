class AddSeoUrlToCompanies < ActiveRecord::Migration[7.1]
  def change
    add_column :companies, :seo_url, :string
    add_index :companies, :seo_url, unique: true
  end
end
