class AddBaseClienteModuloToChamado < ActiveRecord::Migration[5.2]
  def change
    add_reference :chamados, :base, foreign_key: true
  end
end
