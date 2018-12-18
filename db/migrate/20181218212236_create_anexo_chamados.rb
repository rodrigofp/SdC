class CreateAnexoChamados < ActiveRecord::Migration[5.2]
  def change
    create_table :anexo_chamados do |t|
      t.string :nome_arquivo
      t.references :atendimento_chamado_status, foreign_key: true

      t.timestamps
    end
  end
end
