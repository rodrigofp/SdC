class CreateClienteModulos < ActiveRecord::Migration[5.2]
  def change
    create_table :cliente_modulos do |t|
      t.references :cliente, foreign_key: true
      t.references :modulo, foreign_key: true

      t.timestamps
    end
  end
end
