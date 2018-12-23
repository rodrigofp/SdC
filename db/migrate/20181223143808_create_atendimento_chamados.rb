class CreateAtendimentoChamados < ActiveRecord::Migration[5.2]
  def change
    create_table :atendimento_chamados do |t|
      t.references :chamado, foreign_key: true
      t.references :usuario, foreign_key: true
      t.references :status_interno, foreign_key: true
      t.references :status_externo, foreign_key: true
      t.references :base, foreign_key: true
      t.datetime :data
      t.text :descricao

      t.timestamps
    end
  end
end
