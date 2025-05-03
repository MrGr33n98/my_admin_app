ActiveAdmin.register Product do
    permit_params :name, :description, :status, :state, :city, :website,
                  :featured_project, :contact_name, :contact_email, :contact_phone,
                  :logo, portfolio_images: [],
                  services: [], advantages: [], testimonials: [],
                  plan_ids: [], article_ids: []
  
    # Filtros na lateral
    filter :name
    filter :status
    filter :city
    filter :state
    filter :created_at
  
    index do
      selectable_column
      id_column
      column :name
      column :status
      column :city
      column :state
      column :website
      actions
    end
  
    show do |product|
      attributes_table do
        row :name
        row :description
        row :status
        row :state
        row :city
        row :website
        row :featured_project
        row :contact_name
        row :contact_email
        row :contact_phone
  
        row :services do
          product.services&.join(", ")
        end
  
        row :advantages do
          product.advantages&.join(", ")
        end
  
        row :testimonials do
            Array(product.testimonials).map { |t| "#{t['text']} - #{t['author']}" }.join("<br>").html_safe
        end
  
        row :logo do
          if product.logo.attached?
            image_tag url_for(product.logo), height: "100"
          end
        end
  
        row :portfolio_images do
          if product.portfolio_images.attached?
            product.portfolio_images.each do |img|
              div { image_tag url_for(img), height: "100", style: "margin-right: 10px" }
            end
          end
        end
      end
    end
  
    form do |f|
      f.inputs "Informações da Empresa" do
        f.input :name
        f.input :description
        f.input :status, as: :select, collection: Product.statuses.keys
        f.input :state
        f.input :city
        f.input :website
        f.input :featured_project
        f.input :contact_name
        f.input :contact_email
        f.input :contact_phone
        f.input :services, as: :string, input_html: { value: f.object.services&.join(", ") }, hint: "Separe por vírgula"
        f.input :advantages, as: :string, input_html: { value: f.object.advantages&.join(", ") }, hint: "Separe por vírgula"        
        f.input :testimonials, as: :text, hint: "Formato: Texto|Autor, um por linha"
        f.input :logo, as: :file
        f.input :portfolio_images, as: :file, input_html: { multiple: true }
      end
      f.actions
    end
  
    # Conversão do campo testimonials (string para JSON)
    controller do
      def create
        process_testimonials
        super
      end
  
      def update
        process_testimonials
        super
      end
  
      private
  
      def process_testimonials
        if params[:product][:testimonials].is_a?(String)
          lines = params[:product][:testimonials].split("\n").map(&:strip).reject(&:blank?)
          testimonials_array = lines.map do |line|
            text, author = line.split("|", 2)
            { text: text&.strip, author: author&.strip }
          end
          params[:product][:testimonials] = testimonials_array
        end
      end
    end
  end
  