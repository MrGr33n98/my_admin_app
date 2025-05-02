class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price_range
      t.string :website_url
      t.string :contact_email
      t.string :contact_phone

      t.timestamps
    end
  end
end
