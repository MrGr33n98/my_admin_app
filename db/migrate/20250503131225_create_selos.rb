class CreateSelos < ActiveRecord::Migration[7.1]
  def change
    create_table :selos do |t|
      t.string :name
      t.text :description
      t.integer :position
      t.integer :year
      t.string :edition
      t.string :category

      t.timestamps
    end
  end
end
