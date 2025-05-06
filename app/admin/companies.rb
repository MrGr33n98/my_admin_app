# app/admin/companies.rb
ActiveAdmin.register Company do
  # ------------------------------------------------------------------
  # Parâmetros permitidos
  # ------------------------------------------------------------------
  permit_params :name, :description, :location, :state, :city,
                :status, :price_range, :website_url,
                :contact_email, :contact_phone, :starred,
                :logo, :banner, category_ids: []

  # ------------------------------------------------------------------
  # Filtros
  # ------------------------------------------------------------------
  remove_filter :id, :created_at, :updated_at
  remove_filter :logo_attachment, :logo_blob,
                :banner_attachment, :banner_blob
  remove_filter :services, :leads, :reviews

  filter :name
  filter :city
  filter :state
  filter :status,  as: :select, collection: %w[active draft inactive]
  filter :starred
  filter :categories,
         as: :select,
         collection: -> { Category.pluck(:name, :id) },
         multiple: true

  # ------------------------------------------------------------------
  # Ação de importação CSV
  # ------------------------------------------------------------------
  action_item :import_csv, only: :index do
    link_to 'Importar CSV', upload_csv_admin_companies_path
  end

  collection_action :upload_csv, method: :get do
    render 'admin/companies/upload_csv'
  end

  collection_action :import_csv, method: :post do
    if params[:file].blank?
      redirect_to upload_csv_admin_companies_path,
                  alert: 'Selecione um arquivo CSV.'
      return
    end

    result = Company.import_csv(params[:file])
    msg = "Empresas criadas: #{result[:imported]}"
    msg += " | Erros: #{result[:errors].size}" if result[:errors].any?
    flash[result[:errors].any? ? :alert : :notice] = msg
    redirect_to admin_companies_path
  end

  # ------------------------------------------------------------------
  # Index
  # ------------------------------------------------------------------
  index do
    selectable_column
    id_column
    column :name
    column(:status)  { |c| status_tag c.status }
    column(:starred) { |c| status_tag(c.starred? ? '★' : '—',
                                      class: c.starred? ? 'orange' : 'gray') }
    column(:categories) { |c| c.category_names }
    column :city
    column :state
    column(:website_url) { |c| link_to('Acessar', c.website_url,
                                       target: '_blank') if c.website_url.present? }
    actions
  end

  # ------------------------------------------------------------------
  # Show
  # ------------------------------------------------------------------
  show do
    attributes_table do
      row :name
      row :description
      row :location
      row :state
      row :city
      row :status
      row :starred
      row :price_range
      row(:website_url) { |c| link_to c.website_url, c.website_url,
                                     target: '_blank' if c.website_url.present? }
      row :contact_email
      row :contact_phone
      row(:categories) { |c| c.category_names }
      row :logo do |c|
        c.logo.attached? ? image_tag(url_for(c.logo), width: 150) :
                           status_tag('Sem logo', class: 'status-tag warning')
      end
      row :banner do |c|
        c.banner.attached? ? image_tag(url_for(c.banner), width: 300) :
                             status_tag('Sem banner', class: 'status-tag warning')
      end
    end

    panel 'Indicadores' do
      ul do
        li "Leads: #{company.leads.count}"
        li "Reviews: #{company.reviews.count}"
        li "Serviços: #{company.services.count}"
      end
    end
  end

  # ------------------------------------------------------------------
  # Formulário (abas)
  # ------------------------------------------------------------------
  form multipart: true do |f|
    tabs do
      tab 'Dados Básicos' do
        f.inputs do
          f.input :name
          f.input :description
          f.input :location
          f.input :state
          f.input :city
          f.input :status, as: :select, collection: %w[active draft inactive]
          f.input :starred
          f.input :price_range
        end
      end

      tab 'Contato' do
        f.inputs do
          f.input :contact_email
          f.input :contact_phone
          f.input :website_url
        end
      end

      tab 'Categorias' do
        f.inputs do
          f.input :category_ids, as: :check_boxes,
                  collection: Category.order(:parent_id, :name).map { |cat|
                    ["#{cat.parent ? '↳ ' : ''}#{cat.name}", cat.id]
                  }
        end
      end

      tab 'Imagens' do
        f.inputs do
          f.input :logo,   as: :file
          f.input :banner, as: :file
        end
      end
    end
    f.actions
  end
end
