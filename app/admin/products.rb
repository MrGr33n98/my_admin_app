ActiveAdmin.register Product do
    permit_params :name, :description, :status
  
    index do
      selectable_column
      id_column
      column :name
      column :description
      column :status
      column :created_at
      actions
    end
  
    filter :name
    filter :status, as: :select, collection: Product.statuses.keys
    filter :created_at
  
    form do |f|
      f.inputs do
        f.input :name
        f.input :description
        f.input :status, as: :select, collection: Product.statuses.keys
      end
      f.actions
    end
  end
  