class CreateLeadSaas < ActiveRecord::Migration[7.1]
  def change
    create_table :lead_saas do |t|
      t.string :name
      t.string :email
      t.string :company_name
      t.string :source
      t.string :stage
      t.datetime :captured_at

      t.timestamps
    end
  end
end
