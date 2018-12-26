class Chamado < ApplicationRecord
  belongs_to :usuario
  belongs_to :cliente_modulo
  belongs_to :tipo_chamado
  belongs_to :prioridade
  belongs_to :base

  validates :base, presence: true
  validates :usuario, presence: true
  validates :tipo_chamado, presence: true
  validates :cliente_modulo, presence: true
  validates :prioridade, presence: true
  validates :data_abertura, presence: true
  validates_associated :atendimento_chamados

  has_many :atendimento_chamados, dependent: :delete_all, inverse_of: :chamado

  attr_accessor :descricao

def save
  return false if invalid?

  ActiveRecord::Base.transaction do
    chamado = Chamado.create!(usuario_id: usuario_id, 
    data_abertura: data_abertura, 
    cliente_modulo_id: cliente_modulo_id, 
    tipo_chamado_id: tipo_chamado_id, 
    base_id: base_id,
    prioridade_id: prioridade_id,
    numerador: numerador)

    chamado.atendimento_chamados.create!(usuario_id: usuario_id, 
    status_id: 1,
    base_id: base_id, 
    data: data_abertura, 
    descricao: descricao)

  end

  true
  rescue ActiveRecord::StatementInvalid => e
  # Handle exception that caused the transaction to fail
  # e.message and e.cause.message can be helpful
  errors.add(:base, e.message)
  
  false
  end
end
