class Modulo < ApplicationRecord
    has_many :chamados, inverse_of: :modulo

    validates :nome, presence: true, length: { minimum: 2 }
end
