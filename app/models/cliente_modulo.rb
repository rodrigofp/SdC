class ClienteModulo < ApplicationRecord
  belongs_to :cliente
  belongs_to :modulo

  has_many :chamados

  def options_select
    "#{cliente.nome} - #{modulo.nome}"
  end
end
