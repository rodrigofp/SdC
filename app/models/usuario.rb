class Usuario < ApplicationRecord
  belongs_to :tipo_usuario
  belongs_to :cliente

  has_many :contatos, dependent: :delete_all, inverse_of: :usuario

  has_secure_password

  validates :password, presence: true, length: {minimum: 6}
  validates :nome, presence: true, length: { minimum: 3 }
  validates :tipo_usuario, presence: true 
  validates :cliente, presence: true
  validates :cpf, presence: true, uniqueness: true
  validate :validate_cpf

  before_save { self.cpf = CPF.new(self.cpf).formatted }

  validates_associated :contatos

  def validate_cpf
    unless CPF.valid?(cpf)
      errors.add(:cpf, "não é válido") 
    end
  end
end
