class AddClienteToChamado < ActiveRecord::Migration[5.2]
  def change
    add_reference :chamados, :cliente, foreign_key: true
  end
end
