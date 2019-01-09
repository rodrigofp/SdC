class Contato < ApplicationRecord
  belongs_to :tipo_contato
  belongs_to :user

  validates :contato, presence: true
  validates :contato, uniqueness: true, if: :is_email?
  validates :tipo_contato, presence: true
  validates :user, presence: true

  def is_email? 
    :tipo_contato == 3
  end

  def is_telefone?
    :tipo_contato_id == 2
  end

  def is_celular?
    :tipo_contato_id == 1
  end

end
