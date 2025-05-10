class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    unless table_exists?(:products)
      create_table :products do |t|
        t.string :name
        t.text :description
        t.timestamps

        # Adicione as colunas existentes que não foram criadas pela migração original
        t.string :status, default: 'active', null: false
        t.string :state
        t.string :city
      end
    end
  end
end