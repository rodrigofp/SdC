class TipoUsuario < ApplicationRecord
    has_many :users, inverse_of: :tipo_usuario

    validates_associated :users
end
