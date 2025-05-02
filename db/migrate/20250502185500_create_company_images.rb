class CreateCompanyImages < ActiveRecord::Migration[7.1]
  def change
    create_table :company_images do |t|
      t.references :company, null: false, foreign_key: true
      t.string :image_type

      t.timestamps
    end
  end
end
