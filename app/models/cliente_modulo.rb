class ClienteModulo < ApplicationRecord
  belongs_to :cliente
  belongs_to :modulo

  has_many :chamados, inverse_of: :cliente_modulo

  validates :cliente, presence: true
  validates :modulo, presence: true

  validates_associated :chamados

  def options_select
    "#{cliente.nome} - #{modulo.nome}"
  end
end
