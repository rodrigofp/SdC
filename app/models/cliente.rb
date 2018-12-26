class Cliente < ApplicationRecord
    has_many :usuarios, inverse_of: :cliente
    has_many :cliente_modulos, inverse_of: :cliente

    validates :nome, presence: true, length: { minimum: 3 }

end
