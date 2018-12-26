class AddNumeradorToChamado < ActiveRecord::Migration[5.2]
  def change
    add_column :chamados, :numerador, :integer
  end
end
