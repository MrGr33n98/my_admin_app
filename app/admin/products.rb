ActiveAdmin.register Product do
    permit_params :name, :description, :status
  
    scope :all, default: true
    scope("Ativos")   { |products| products.where(status: "active") }
    scope("Inativos") { |products| products.where(status: "inactive") }
    scope("Arquivados") { |products| products.where(status: "archived") }
  
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
  