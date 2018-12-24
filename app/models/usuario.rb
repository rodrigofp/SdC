class Usuario < ApplicationRecord
  belongs_to :tipo_usuario
  belongs_to :cliente

  has_many :contatos

end
