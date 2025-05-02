class CreateImpressions < ActiveRecord::Migration[7.1]
  def change
    create_table :impressions do |t|
      t.references :company, null: false, foreign_key: true
      t.string :impression_type
      t.datetime :date
      t.integer :value

      t.timestamps
    end
  end
end
