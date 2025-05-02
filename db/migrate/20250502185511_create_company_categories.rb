class CreateCompanyCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :company_categories do |t|
      t.references :company, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    add_index :company_categories, [:company_id, :category_id], unique: true
  end
end
