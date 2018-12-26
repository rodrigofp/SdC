class Status < ApplicationRecord
    has_many :atendimento_chamados, inverse_of: :status

    validates_associated :atendimento_chamados
end
