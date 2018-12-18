class CreateTipoChamados < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_chamados do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
