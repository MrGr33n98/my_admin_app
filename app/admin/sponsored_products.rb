ActiveAdmin.register SponsoredProduct do
  permit_params :company_id, :product_name, :start_date, :end_date, :price_paid

  scope :all, default: true
  scope("ATIVOS")    { |s| s.select(&:active?) }
  scope("Pendentes") { |s| s.select { |sp| sp.status == 'pending' } }
  scope("Expirados") { |s| s.select { |sp| sp.status == 'expired' } }

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

  filter :company
  filter :product_name
  filter :start_date
  filter :end_date

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
