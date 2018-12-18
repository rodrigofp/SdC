class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :senha
      t.string :cpf
      t.references :tipo_usuario, foreign_key: true
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
