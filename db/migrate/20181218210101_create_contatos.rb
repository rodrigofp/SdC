class CreateContatos < ActiveRecord::Migration[5.2]
  def change
    create_table :contatos do |t|
      t.string :contato
      t.references :tipo_contato, foreign_key: true
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end
