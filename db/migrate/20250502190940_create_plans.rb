class CreatePlans < ActiveRecord::Migration[7.1]
  def change
    create_table :plans do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :billing_cycle
      t.boolean :active

      t.timestamps
    end
  end
end
