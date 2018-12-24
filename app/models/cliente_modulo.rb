class ClienteModulo < ApplicationRecord
  belongs_to :cliente
  belongs_to :modulo

  has_many :chamados
end
