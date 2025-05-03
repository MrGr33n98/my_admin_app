class AddBillingFrequencyToPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :billing_frequency, :string
  end
end
