class AddUserToContatos < ActiveRecord::Migration[5.2]
  def change
    add_reference :contatos, :user, foreign_key: true
  end
end
