class Chamado < ApplicationRecord
  belongs_to :user
  belongs_to :cliente
  belongs_to :modulo
  belongs_to :tipo_chamado
  belongs_to :prioridade
  belongs_to :base

  validates :base, presence: true
  validates :user, presence: true
  validates :tipo_chamado, presence: true
  validates :cliente, presence: true
  validates :modulo, presence: true
  validates :prioridade, presence: true
  validates :data_abertura, presence: true
  validates_associated :atendimento_chamados

  has_many :atendimento_chamados, dependent: :delete_all, inverse_of: :chamado

  accepts_nested_attributes_for :atendimento_chamados
  attr_accessor :descricao
end