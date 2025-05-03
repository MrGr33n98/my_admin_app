# app/admin/product_accesses.rb
ActiveAdmin.register ProductAccess do
  permit_params :member_id, :product_name, :access_level, :granted_at, :revoked_at

  # Filtros
  filter :member
  filter :product_name
  filter :access_level
  filter :granted_at
  filter :revoked_at

  # Escopos
  scope :all, default: true
  scope :approved
  scope :canceled

  # Exibição de índice
  index do
    selectable_column
    column :member
    column :product_name
    column :access_level
    column :granted_at
    column :revoked_at
    actions
  end
end
