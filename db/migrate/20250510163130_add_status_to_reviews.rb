class AddStatusToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :status, :integer, default: 0
  end
end
