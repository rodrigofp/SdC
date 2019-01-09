class RemoveUsuarioFromContatos < ActiveRecord::Migration[5.2]
  def change
    remove_reference :contatos, :usuario, foreign_key: true
  end
end
