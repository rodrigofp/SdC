class Contato < ApplicationRecord
  belongs_to :tipo_contato
  belongs_to :usuario
end
