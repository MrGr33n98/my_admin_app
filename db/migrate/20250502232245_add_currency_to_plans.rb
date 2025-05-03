class AddCurrencyToPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :currency, :integer
  end
end
