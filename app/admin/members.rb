ActiveAdmin.register Member do
    menu label: "Membros da empresa"
    config.clear_action_items!
  
    # Corrige filtros inválidos
    remove_filter :email
    filter :name
    filter :status
    filter :company
  
    # Escopos
    scope :all, default: true
    scope("Aguardando aprovação (#{Member.where(status: 'pending').count})")   { |members| members.where(status: 'pending') }
    scope("Aprovados (#{Member.where(status: 'approved').count})")             { |members| members.where(status: 'approved') }
    scope("Cancelados (#{Member.where(status: 'cancelled').count})")           { |members| members.where(status: 'cancelled') }
    scope("Aguardando solicitar empresa (#{Member.where(status: 'waiting_company').count})") { |members| members.where(status: 'waiting_company') }
    scope("Aguardando solicitar produto (#{Member.where(status: 'waiting_product').count})") { |members| members.where(status: 'waiting_product') }
    scope("Aguardando aprovar produto (#{Member.where(status: 'waiting_approval').count})") { |members| members.where(status: 'waiting_approval') }
    scope("Negado empresa (#{Member.where(status: 'denied_company').count})")  { |members| members.where(status: 'denied_company') }
    scope("Negado produto (#{Member.where(status: 'denied_product').count})")  { |members| members.where(status: 'denied_product') }
  
    index title: "Membros da empresa" do
      selectable_column
      id_column
      column :name
      column :status
      column "Empresa", sortable: 'company.name' do |member|
        member.company&.name
      end
      actions
    end
  end
  