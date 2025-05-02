class AddStatusToLeads < ActiveRecord::Migration[7.1]
  def change
    add_column :leads, :status, :integer
  end
end
