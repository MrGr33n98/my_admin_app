class CreateLeads < ActiveRecord::Migration[7.1]
  def change
    create_table :leads do |t|
      t.references :company, null: false, foreign_key: true
      t.string :lead_type
      t.string :client_name
      t.string :client_email
      t.string :client_phone
      t.date :date
      t.integer :value

      t.timestamps
    end
  end
end
