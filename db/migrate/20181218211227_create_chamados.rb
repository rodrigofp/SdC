class CreateChamados < ActiveRecord::Migration[5.2]
  def change
    create_table :chamados do |t|
      t.datetime :data_abertura
      t.datetime :data_fechamento
      t.references :modulo, foreign_key: true
      t.references :tipo_chamado, foreign_key: true
      t.references :prioridade, foreign_key: true

      t.timestamps
    end
  end
end
