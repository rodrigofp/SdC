class RemoveModuloFromChamado < ActiveRecord::Migration[5.2]
  def change
    remove_reference :chamados, :modulo, foreign_key: true
  end
end
