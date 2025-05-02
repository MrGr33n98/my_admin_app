class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :primary_phone
      t.string :secondary_phone
      t.string :company_name
      t.boolean :admin
      t.boolean :email_confirmed

      t.timestamps
    end
  end
end
