class CreateTipoContatos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_contatos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
