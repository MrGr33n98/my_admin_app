ActiveAdmin.register Category do
  permit_params :name, :seo_url, :seo_title, :short_description, :description,
                :parent_id, :kind, :status, :featured

  index do
    selectable_column
    id_column
    column :name
    column :seo_url
    column :seo_title
    column :short_description
    column :description
    column :parent
    column :kind
    column :status
    column :featured
    actions
  end

  filter :name
  filter :seo_url
  filter :kind, as: :select
  filter :status, as: :select
  filter :featured
  filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :seo_url
      f.input :seo_title
      f.input :short_description
      f.input :description
      f.input :parent, collection: Category.all.map { |c| [c.name, c.id] }
      f.input :kind, as: :select, collection: %w[software service content]
      f.input :status, as: :select, collection: %w[active draft archived]
      f.input :featured
    end
    f.actions
  end
end
