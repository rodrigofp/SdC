class AddModuloToChamado < ActiveRecord::Migration[5.2]
  def change
    add_reference :chamados, :modulo, foreign_key: true
  end
end
