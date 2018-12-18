class Usuario < ApplicationRecord
  belongs_to :tipo_usuario
  belongs_to :cliente
end
