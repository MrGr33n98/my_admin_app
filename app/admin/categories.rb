ActiveAdmin.register Category do
  # ==========================
  # Parâmetros Permitidos
  # ==========================
  permit_params :name, :description, :short_description, :seo_title, :seo_url,
                :parent_id, :kind, :featured, :status

  # ==========================
  # Ações Extras
  # ==========================
  action_item :import_csv, only: :index do
    link_to 'Importar CSV', action: :upload_csv
  end

  collection_action :upload_csv, method: :get do
    render 'admin/categories/upload_csv'
  end

  collection_action :import_csv, method: :post do
    if params[:file].present?
      begin
        result = Category.import_from_csv(params[:file])
        msg = "Importadas: #{result[:imported]}. "
        msg += "Erros: #{result[:errors].size}" if result[:errors].any?
        redirect_to admin_categories_path, notice: msg
      rescue => e
        redirect_to admin_categories_path, alert: "Erro ao importar: #{e.message}"
      end
    else
      redirect_to admin_categories_path, alert: "Por favor, selecione um arquivo CSV."
    end
  end

  # ==========================
  # Index
  # ==========================
  index do
    selectable_column
    id_column
    column :full_name
    column :seo_url
    column :seo_title
    column :short_description
    column :kind
    column :status
    column :featured
    actions
  end

  # ==========================
  # Filtros
  # ==========================
  filter :name
  filter :kind
  filter :status
  filter :featured
  filter :parent_id, as: :select, collection: -> {
    Category.where(parent_id: nil).map { |c| [c.name, c.id] }
  }, label: "Categoria Pai"

  # ==========================
  # Show
  # ==========================
  show do
    attributes_table do
      row :id
      row :full_name
      row :seo_url
      row :seo_title
      row :short_description
      row :description
      row :kind
      row :status
      row :featured
      row :parent
    end

    panel "Subcategorias" do
      table_for category.subcategories do
        column :id
        column :name
        column :seo_url
        column :status
        column("") { |sub| link_to "Ver", admin_category_path(sub) }
      end
    end
  end

  # ==========================
  # Formulário
  # ==========================
  form do |f|
    f.inputs do
      f.input :name
      f.input :parent, as: :select, collection: Category.where(parent_id: nil).where.not(id: f.object.id), include_blank: true
      f.input :seo_url
      f.input :seo_title
      f.input :short_description
      f.input :description
      f.input :kind
      f.input :status
      f.input :featured
    end
    f.actions
  end

  # ==========================
  # Destruição com Mensagem
  # ==========================
  controller do
    def destroy
      category = Category.find(params[:id])
      if category.destroy
        redirect_to admin_categories_path, notice: "Categoria excluída com sucesso."
      else
        redirect_to admin_categories_path, alert: category.errors.full_messages.to_sentence
      end
    end
  end
end
