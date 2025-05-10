ActiveAdmin.register SponsoredProduct do
  permit_params :company_id, :product_name, :start_date, :end_date, :price_paid

  # Filtros por status
  scope :all, default: true
  scope("ATIVOS", :ativos)
  scope("Pendentes", :pendentes)
  scope("Expirados", :expirados)

  # Listagem
  index do
    selectable_column
    id_column
    column :company
    column :product_name
    column :start_date
    column :end_date
    column :price_paid
    column("Status") { |sp| status_tag sp.status, class: sp.status }
    actions
  end

  # Filtros padrão
  filter :company
  filter :product_name
  filter :start_date
  filter :end_date

  # Formulário
  form do |f|
    f.inputs do
      f.input :company
      f.input :product_name
      f.input :start_date, as: :datepicker
      f.input :end_date, as: :datepicker
      f.input :price_paid
    end
    f.actions
  end
end
