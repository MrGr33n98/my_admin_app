class AddPaymentMethodToPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :payment_method, :integer
  end
end
