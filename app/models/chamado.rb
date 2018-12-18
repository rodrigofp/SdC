class Chamado < ApplicationRecord
  belongs_to :usuario
  belongs_to :modulo
  belongs_to :tipo_chamado
  belongs_to :prioridade
end
