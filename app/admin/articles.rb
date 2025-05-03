ActiveAdmin.register Article do
    permit_params :title, :content, :category_id, :product_id
  
    index do
      selectable_column
      id_column
      column :title
      column :content
      column "Categoria", :category
      column :created_at
      column :updated_at
      column :product
      actions
    end
  
    filter :title
    filter :category
    filter :product
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :title
        f.input :content
        f.input :category
        f.input :product
      end
      f.actions
    end
  end
  