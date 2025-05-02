class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :company, null: false, foreign_key: true
      t.text :content
      t.integer :rating
      t.date :date

      t.timestamps
    end
  end
end
