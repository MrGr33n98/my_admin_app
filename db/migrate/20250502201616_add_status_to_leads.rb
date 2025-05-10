class AddStatusToLeads < ActiveRecord::Migration[7.0]
  def change
    unless column_exists?(:leads, :status)
      add_column :leads, :status, :integer
    end
  end
end