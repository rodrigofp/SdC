class AtendimentoChamadoStatus < ApplicationRecord
  belongs_to :usuario
  belongs_to :status_interno
  belongs_to :status_externo
end
