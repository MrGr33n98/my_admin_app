ActiveAdmin.register Selo do
  menu label: "Selos"

  permit_params :name, :description, :position, :year, :edition, :category, :products, :image

  index do
    selectable_column
    id_column
    column :name
    column :description
    column :position
    column :year
    column :edition
    column("Categoria", :category)
    column("Produtos", :products)
    column("Imagem") do |selo|
      if selo.image.attached?
        image_tag url_for(selo.image), size: "60x60"
      else
        status_tag("Sem imagem")
      end
    end
    actions
  end

  filter :name
  filter :position
  filter :year
  filter :edition
  filter :category

  form do |f|
    f.inputs "Informações do Selo" do
      f.input :name
      f.input :description
      f.input :position
      f.input :year
      f.input :edition
      f.input :category
      f.input :products
      f.input :image, as: :file
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :description
      row :position
      row :year
      row :edition
      row :category
      row :products
      row :image do |selo|
        if selo.image.attached?
          image_tag url_for(selo.image), height: "200px"
        else
          status_tag("Sem imagem")
        end
      end
    end
  end
end
