class CreateCompanyBanners < ActiveRecord::Migration[7.1]
  def change
    create_table :company_banners do |t|
      t.references :company, null: false, foreign_key: true
      t.string :image
      t.string :caption
      t.string :link_url

      t.timestamps
    end
  end
end
