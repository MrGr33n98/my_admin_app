ActiveAdmin.register Plan do
  permit_params :name, :price, :description, :status,
                :currency, :billing_type, :payment_method,
                :billing_frequency, :billing_cycle, :product_id

  # Abas de escopo no topo da listagem
  scope :all, default: true
  scope("Clientes")       { |plans| plans.where(name: "Clientes") }
  scope("Advanced")       { |plans| plans.where(name: "Advanced") }
  scope("Profissional")   { |plans| plans.where(name: "Profissional") }
  scope("Starter")        { |plans| plans.where(name: "Starter") }
  scope("Prospecção")     { |plans| plans.where(name: "Prospecção") }
  scope("Growth")         { |plans| plans.where(name: "Growth") }
  scope("Reputation")     { |plans| plans.where(name: "Reputation") }
  scope("Gratuitos")      { |plans| plans.where(price: 0) }

  # 📄 Tabela de listagem
  index do
    selectable_column
    id_column
    column :name
    column :price
    column :currency
    column :billing_type
    column :payment_method
    column :billing_frequency
    column :billing_cycle
    column :product
    column :status
    actions
  end

  # 🔍 Filtros laterais
  filter :name
  filter :price
  filter :currency, as: :select, collection: Plan.currencies.keys
  filter :billing_type, as: :select, collection: Plan.billing_types.keys
  filter :payment_method, as: :select, collection: Plan.payment_methods.keys
  filter :billing_frequency
  filter :billing_cycle
  filter :status, as: :select, collection: Plan.statuses.keys
  filter :product

  # 📝 Formulário de criação/edição
  form do |f|
    f.inputs "Informações do Plano" do
      f.input :name
      f.input :price
      f.input :description
      f.input :status, as: :select, collection: Plan.statuses.keys
      f.input :currency, as: :select, collection: Plan.currencies.keys
      f.input :billing_type, as: :select, collection: Plan.billing_types.keys
      f.input :payment_method, as: :select, collection: Plan.payment_methods.keys
      f.input :billing_frequency
      f.input :billing_cycle
      f.input :product
    end
    f.actions
  end
end
