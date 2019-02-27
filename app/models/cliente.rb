class Cliente < ApplicationRecord
    has_many :users, inverse_of: :cliente
    has_many :chamados, inverse_of: :cliente, dependent: :destroy

    validates :nome, presence: true, length: { minimum: 3 }
end
