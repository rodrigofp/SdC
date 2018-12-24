class Cliente < ApplicationRecord
    has_many :usuarios
    has_many :cliente_modulos
end
