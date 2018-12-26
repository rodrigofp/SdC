class Base < ApplicationRecord
    has_many :chamados, inverse_of: :base
    has_many :atendimento_chamados, inverse_of: :base

    validates_associated :chamados
    validates_associated :atendimento_chamados
end
