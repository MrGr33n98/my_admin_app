ActiveAdmin.register Lead do
  permit_params :client_name, :client_email, :client_phone, :value, :date,
                :company_id, :status, :porte_empresa, :lead_type

  index do
    selectable_column
    id_column
    column :client_name
    column :client_email
    column :client_phone
    column :company
    column :value
    column :lead_type
    column :status
    column :porte_empresa
    column :date
    actions
  end

  filter :client_name
  filter :client_email
  filter :company
  filter :status, as: :select, collection: Lead.statuses.keys
  filter :porte_empresa, as: :select, collection: Lead.porte_empresas.keys
  filter :date

  form do |f|
    f.inputs do
      f.input :client_name
      f.input :client_email
      f.input :client_phone
      f.input :company, as: :select, collection: Company.all.pluck(:name, :id)
      f.input :value
      f.input :lead_type
      f.input :status, as: :select, collection: Lead.statuses.keys
      f.input :porte_empresa, as: :select, collection: Lead.porte_empresas.keys
      f.input :date, as: :datepicker
    end
    f.actions
  end

  show do
    attributes_table do
      row :client_name
      row :client_email
      row :client_phone
      row :company
      row :value
      row :lead_type
      row :status
      row :porte_empresa
      row :date
      row :created_at
      row :updated_at
    end
  end
end
