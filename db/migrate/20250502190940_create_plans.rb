class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string  :name
      t.text    :description
      t.decimal :price, precision: 10, scale: 2
      t.integer :status
      t.integer :currency
      t.integer :billing_type
      t.integer :payment_method
      t.string  :billing_frequency
      t.string  :billing_cycle
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
