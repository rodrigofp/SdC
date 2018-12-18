class CreateAtendimentoChamadoStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :atendimento_chamado_statuses do |t|
      t.references :usuario, foreign_key: true
      t.references :status_interno, foreign_key: true
      t.references :status_externo, foreign_key: true
      t.datetime :data
      t.text :descricao

      t.timestamps
    end
  end
end
