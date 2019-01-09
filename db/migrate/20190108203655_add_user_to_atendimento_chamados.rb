class AddUserToAtendimentoChamados < ActiveRecord::Migration[5.2]
  def change
    add_reference :atendimento_chamados, :user, foreign_key: true
  end
end
