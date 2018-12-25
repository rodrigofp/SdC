class AddStatusToAtendimentoChamado < ActiveRecord::Migration[5.2]
  def change
    add_reference :atendimento_chamados, :status, foreign_key: true
  end
end
