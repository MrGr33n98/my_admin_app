class AddProductToPlans < ActiveRecord::Migration[7.1]
  def change
    add_reference :plans, :product, null: false, foreign_key: true
  end
end
