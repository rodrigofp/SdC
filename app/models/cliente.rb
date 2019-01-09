class Cliente < ApplicationRecord
    has_many :users, inverse_of: :cliente
    has_many :cliente_modulos, inverse_of: :cliente, dependent: :destroy

    validates :nome, presence: true, length: { minimum: 3 }

    accepts_nested_attributes_for :cliente_modulos, allow_destroy: true
end
