class AddPlanCategoryToPlans < ActiveRecord::Migration[7.1]
  def change
    add_column :plans, :plan_category, :string
  end
end
