# db/migrate/XXXXXXXXXXXXXX_create_leads.rb
class CreateLeads < ActiveRecord::Migration[7.1]
  def change
    create_table :leads do |t|
      t.string :nome
      t.string :email
      t.string :cargo
      t.integer :score
      t.references :empresa, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.string :porte_empresa
      t.string :categoria_desejada
      t.string :status
      t.datetime :distribuido_em
      t.datetime :convertido_em

      t.timestamps
    end
  end
end
