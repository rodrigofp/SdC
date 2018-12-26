class Modulo < ApplicationRecord
    has_many :cliente_modulos, inverse_of: :modulo

    validates_associated :cliente_modulos
end
