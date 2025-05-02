class AddStatusAndPorteEmpresaToLeads < ActiveRecord::Migration[7.1]
  def change
    # Removida a linha abaixo porque a coluna "status" já existe
    # add_column :leads, :status, :integer

    # Adiciona apenas a coluna que ainda não existe
    add_column :leads, :porte_empresa, :integer
  end
end
