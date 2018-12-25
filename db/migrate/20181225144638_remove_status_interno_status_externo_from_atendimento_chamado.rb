class RemoveStatusInternoStatusExternoFromAtendimentoChamado < ActiveRecord::Migration[5.2]
  def change
    remove_reference :atendimento_chamados, :status_interno, foreign_key: true
    remove_reference :atendimento_chamados, :status_externo, foreign_key: true
  end
end
