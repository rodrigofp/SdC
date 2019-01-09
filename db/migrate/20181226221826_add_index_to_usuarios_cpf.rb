class AddIndexToUsuariosCpf < ActiveRecord::Migration[5.2]
  def change
    add_index :usuarios, :cpf
  end
end
