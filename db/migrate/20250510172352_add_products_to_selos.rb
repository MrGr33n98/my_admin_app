class AddProductsToSelos < ActiveRecord::Migration[7.1]
  def change
    add_column :selos, :products, :integer
  end
end
