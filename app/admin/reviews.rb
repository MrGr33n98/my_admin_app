ActiveAdmin.register Review do
  permit_params :company_id, :content, :rating, :date, :status

  # Filtros
  filter :company
  filter :rating, as: :numeric
  filter :status, as: :select, collection: -> {
    Review.statuses.keys.map { |s| [s.humanize, s] }
  }
  filter :created_at

  # Escopos com contadores
  scope :all, default: true
  scope :canceled, -> { Review.status_canceled }, group: :status
  scope :initiated, -> { Review.status_initiated }, group: :status
  scope :pending_approval, -> { Review.status_pending_approval }, group: :status
  scope :waiting_user_review, -> { Review.status_waiting_user_review }, group: :status
  scope :approved, -> { Review.status_approved }, group: :status

  # Lista
  index do
    selectable_column
    column :company, sortable: 'companies.name'
    column(:content) { |r| truncate(r.content, length: 50) }
    column :rating
    column(:status) { |r| status_tag r.status, class: r.status }
    column :date
    column :created_at
    actions dropdown: true do |review|
      item "Aprovar", approve_admin_review_path(review), method: :put if review.may_approve?
    end
  end

  # Formulário
  form do |f|
    f.semantic_errors
    f.inputs do
      f.input :company, collection: Company.order(:name)
      f.input :content
      f.input :rating, as: :select, collection: 1..5
      f.input :date, as: :datepicker
      f.input :status, as: :select, collection: Review.statuses.keys.map { |s| [s.humanize, s] }
    end
    f.actions
  end

  # Ação customizada
  member_action :approve, method: :put do
    resource.approve!
    redirect_to admin_reviews_path, notice: "Avaliação aprovada com sucesso!"
  end

  # Show
  show do
    attributes_table do
      row :company
      row :content
      row :rating
      row(:status) { |r| status_tag r.status, class: r.status }
      row :date
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end

  # Exportar CSV
  csv do
    column :id
    column("Company") { |r| r.company.name }
    column :content
    column :rating
    column :status
    column :date
    column :created_at
  end
end
