class TipoUsuario < ApplicationRecord
    has_many :usuarios, inverse_of: :tipo_usuario

    validates_associated :usuarios
end
