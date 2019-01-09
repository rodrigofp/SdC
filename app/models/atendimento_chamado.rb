class AtendimentoChamado < ApplicationRecord
  belongs_to :chamado
  belongs_to :user
  belongs_to :base
  belongs_to :status

  validates :base, presence: true
  validates :user, presence: true
  validates :chamado, presence: true
  validates :status, presence: true
  validates :descricao, presence: true, length: { minimum: 3}
  validates :data, presence: true

end
