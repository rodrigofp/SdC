class AtendimentoChamado < ApplicationRecord
  belongs_to :chamado
  belongs_to :usuario
  belongs_to :base
  belongs_to :status
end
