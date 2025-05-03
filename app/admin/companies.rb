ActiveAdmin.register Company do
  permit_params :name, :description, :location, :price_range,
                :website_url, :contact_email, :contact_phone,
                :state, :city, :logo, :banner, category_ids: []

  # Filtros laterais
  filter :name
  filter :state
  filter :city
  filter :created_at

  # Tabela de listagem
  index do
    selectable_column
    id_column
    column :name
    column :city if Company.column_names.include?("city")
    column :state if Company.column_names.include?("state")
    column :contact_email
    column :contact_phone
    column :website_url
    actions
  end

  # Página de detalhes
  show do |company|
    attributes_table do
      row :name
      row :description
      row :location
      row :price_range
      row :state
      row :city
      row :website_url
      row :contact_email
      row :contact_phone

      row :logo do
        if company.logo.attached?
          image_tag url_for(company.logo), height: "100"
        else
          status_tag("Sem logo", :warning)
        end
      end

      row :banner do
        if company.banner.attached?
          image_tag url_for(company.banner), height: "100"
        else
          status_tag("Sem banner", :warning)
        end
      end
    end
  end

  # Formulário de cadastro/edição
  form do |f|
    f.inputs "Informações da Empresa" do
      f.input :name
      f.input :description
      f.input :location
      f.input :price_range
      f.input :state
      f.input :city
      f.input :website_url
      f.input :contact_email
      f.input :contact_phone
      f.input :logo, as: :file
      f.input :banner, as: :file
      f.input :categories, as: :check_boxes
    end
    f.actions
  end
end
