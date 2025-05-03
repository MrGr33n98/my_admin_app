ActiveAdmin.register CompanyCategory do
  permit_params :company_id, :category_id

  index do
    selectable_column
    id_column
    column :company
    column :category
    actions
  end

  filter :company
  filter :category

  form do |f|
    f.inputs do
      f.input :company
      f.input :category
    end
    f.actions
  end
end
