class AtendimentoChamado < ApplicationRecord
  belongs_to :chamado
  belongs_to :usuario
  belongs_to :status_interno
  belongs_to :status_externo
  belongs_to :base
end
