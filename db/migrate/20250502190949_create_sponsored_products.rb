class CreateSponsoredProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :sponsored_products do |t|
      t.references :company, null: false, foreign_key: true
      t.string :product_name
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :price_paid
      t.string :status

      t.timestamps
    end
  end
end
