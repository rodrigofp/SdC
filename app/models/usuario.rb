class Usuario < ApplicationRecord
  belongs_to :tipo_usuario
  belongs_to :cliente

  has_many :chamados
  has_many :contatos
  has_many :atendimento_chamados

  accepts_nested_attributes_for :contatos, :reject_if => :all_blank, allow_destroy: true

end
