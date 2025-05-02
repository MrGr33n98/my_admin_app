class CreateProductAccesses < ActiveRecord::Migration[7.1]
  def change
    create_table :product_accesses do |t|
      t.references :member, null: false, foreign_key: true
      t.string :product_name
      t.string :access_level
      t.datetime :granted_at
      t.datetime :revoked_at

      t.timestamps
    end
  end
end
