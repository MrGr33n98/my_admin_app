ActiveAdmin.register Review do
  permit_params :company_id, :content, :rating, :date, :status

  # Filtros da barra lateral
  filter :company
  filter :rating
  filter :status, as: :select, collection: Review.statuses.keys

  # Escopos (abas com contadores)
  scope :all, default: true
  scope("Canceladas")               { |reviews| reviews.where(status: :canceled) }
  scope("Iniciadas")                { |reviews| reviews.where(status: :initiated) }
  scope("Aguardando aprovação")     { |reviews| reviews.where(status: :pending_approval) }
  scope("Aguardando revisão do usuário") { |reviews| reviews.where(status: :waiting_user_review) }
  scope("Aprovadas")                { |reviews| reviews.where(status: :approved) }

  index do
    selectable_column
    column :company
    column :content
    column :rating
    column :status
    column :date
    actions
  end
end
