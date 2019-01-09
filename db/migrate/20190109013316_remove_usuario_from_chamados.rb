class RemoveUsuarioFromChamados < ActiveRecord::Migration[5.2]
  def change
    remove_reference :chamados, :usuario, foreign_key: true
  end
end
