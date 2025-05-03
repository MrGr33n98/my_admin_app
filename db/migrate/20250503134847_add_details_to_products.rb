class AddDetailsToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :state, :string
    add_column :products, :city, :string
    add_column :products, :website, :string
    add_column :products, :featured_project, :text
    add_column :products, :contact_name, :string
    add_column :products, :contact_email, :string
    add_column :products, :contact_phone, :string
    add_column :products, :services, :json
    add_column :products, :advantages, :json
    add_column :products, :testimonials, :json
  end
end
