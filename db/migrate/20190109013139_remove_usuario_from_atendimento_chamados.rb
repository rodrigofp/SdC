class RemoveUsuarioFromAtendimentoChamados < ActiveRecord::Migration[5.2]
  def change
    remove_reference :atendimento_chamados, :usuario, foreign_key: true
  end
end
