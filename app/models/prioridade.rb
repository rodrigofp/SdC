class Prioridade < ApplicationRecord
    has_many :chamados, inverse_of: :prioridade

    validates_associated :chamados
end
