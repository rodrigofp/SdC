class Chamado < ApplicationRecord
  belongs_to :usuario
  belongs_to :cliente_modulo
  belongs_to :tipo_chamado
  belongs_to :prioridade
  belongs_to :base

  has_many :atendimento_chamados

  accepts_nested_attributes_for :atendimento_chamados, reject_if :all_blank
end
