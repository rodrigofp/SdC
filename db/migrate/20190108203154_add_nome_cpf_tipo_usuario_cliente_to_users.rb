class AddNomeCpfTipoUsuarioClienteToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nome, :string
    add_column :users, :cpf, :string
    add_reference :users, :tipo_usuario, foreign_key: true
    add_reference :users, :cliente, foreign_key: true
  end
end
