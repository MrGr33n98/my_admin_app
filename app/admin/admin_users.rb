ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation

  menu label: "Administradores"

  index title: "Usuários Administradores" do
    selectable_column
    id_column
    column :email
    column "Último acesso", :current_sign_in_at
    column "Total de acessos", :sign_in_count
    column "Criado em", :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at, label: "Último acesso"
  filter :sign_in_count, label: "Total de acessos"
  filter :created_at, label: "Data de criação"

  form title: "Cadastro de Administrador" do |f|
    f.inputs "Informações do Admin" do
      f.input :email, placeholder: "exemplo@dominio.com"

      # Só mostra os campos de senha se for novo ou se estiver editando manualmente
      f.input :password, placeholder: "••••••••", hint: "Deixe em branco para não alterar" unless f.object.new_record?
      f.input :password_confirmation, placeholder: "••••••••" unless f.object.new_record?
    end
    f.actions
  end

  controller do
    def update
      # Remove campos de senha se estiverem em branco para evitar sobrescrever
      if params[:admin_user][:password].blank?
        params[:admin_user].delete("password")
        params[:admin_user].delete("password_confirmation")
      end
      super
    end
  end
end
