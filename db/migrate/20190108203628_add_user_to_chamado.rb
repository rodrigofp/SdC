class AddUserToChamado < ActiveRecord::Migration[5.2]
  def change
    add_reference :chamados, :user, foreign_key: true
  end
end
