ActiveAdmin.register Company do
  permit_params :name, :description, :location, :state, :city,
                :status, :price_range, :website_url, :contact_email,
                :contact_phone, :starred, :logo, :banner,
                category_ids: []

  # Filtros
  filter :name
  filter :city
  filter :state
  filter :status, as: :select, collection: %w[active draft inactive]
  filter :starred
  filter :categories, as: :select,
                      collection: -> { Category.pluck(:name, :id) },
                      multiple: true

  # Lista
  index do
    selectable_column
    id_column
    column :name
    column :status do |company|
      status_tag company.status, class: company.status == "active" ? "green" : "red"
    end
    column :starred do |company|
      status_tag(company.starred? ? "★ Destaque" : "Não", class: company.starred? ? "orange" : "gray")
    end
    column :categories do |company|
      company.categories.pluck(:name).join(', ')
    end
    column :city
    column :state
    column :price_range
    column :website_url do |company|
      link_to("Acessar", company.website_url, target: "_blank") if company.website_url.present?
    end
    actions
  end

  # Show
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
      row :website_url do |company|
        link_to company.website_url, company.website_url, target: "_blank" if company.website_url.present?
      end
      row :contact_email
      row :contact_phone
      row :categories do |company|
        company.categories.pluck(:name).join(', ')
      end
      row :logo do |company|
        if company.logo.attached?
          image_tag url_for(company.logo), width: 150
        else
          content_tag(:span, "Sem logo", class: "status_tag warning")
        end
      end
      row :banner do |company|
        if company.banner.attached?
          image_tag url_for(company.banner), width: 300
        else
          content_tag(:span, "Sem banner", class: "status_tag warning")
        end
      end
    end

    panel "Indicadores" do
      ul do
        li "Leads: #{company.leads.count}"
        li "Reviews: #{company.reviews.count}"
        li "Serviços: #{company.services.count}"
      end
    end
  end

  # Formulário com abas
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
          f.input :categories, as: :select,
                               collection: Category.pluck(:name, :id),
                               input_html: { multiple: true }
        end
      end

      tab 'Imagens' do
        f.inputs do
          f.input :logo, as: :file, hint: (
            f.object.persisted? && f.object.logo.attached? ?
              image_tag(url_for(f.object.logo), width: 100) :
              content_tag(:span, "Sem logo", class: "status_tag warning")
          )

          f.input :banner, as: :file, hint: (
            f.object.persisted? && f.object.banner.attached? ?
              image_tag(url_for(f.object.banner), width: 300) :
              content_tag(:span, "Sem banner", class: "status_tag warning")
          )
        end
      end
    end
    f.actions
  end
end
