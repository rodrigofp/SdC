class User < ApplicationRecord
  belongs_to :cliente
  belongs_to :tipo_usuario

  has_many :contatos, dependent: :delete_all, inverse_of: :user
  has_many :chamados, dependent: :delete_all, inverse_of: :user
  has_many :atendimento_chamados, dependent: :delete_all, inverse_of: :user

  validates :nome, presence: true, length: { minimum: 3 }
  validates :tipo_usuario, presence: true 
  validates :cliente, presence: true
  validates :cpf, presence: true, uniqueness: true
  validate :validate_cpf

  before_save { self.cpf = CPF.new(self.cpf).formatted }

  

  def validate_cpf
    unless CPF.valid?(cpf)
      errors.add(:cpf, "não é válido") 
    end
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
