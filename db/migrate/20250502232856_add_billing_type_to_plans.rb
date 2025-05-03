class AddBillingTypeToPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :billing_type, :integer
  end
end
