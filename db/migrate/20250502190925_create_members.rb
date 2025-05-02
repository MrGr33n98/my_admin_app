class CreateMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.string :role
      t.references :company, null: false, foreign_key: true
      t.string :status
      t.datetime :joined_at

      t.timestamps
    end
  end
end
