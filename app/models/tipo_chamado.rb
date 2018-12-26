class TipoChamado < ApplicationRecord
    has_many :chamados, inverse_of: :tipo_chamado

    validates_associated :chamados
end
