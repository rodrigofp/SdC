class Modulo < ApplicationRecord
    has_many :cliente_modulos, inverse_of: :modulo

    validates :nome, presence: true, length: { minimum: 2 }

    validates_associated :cliente_modulos
end
