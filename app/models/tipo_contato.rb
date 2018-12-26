class TipoContato < ApplicationRecord
    has_many :contatos, inverse_of: :tipo_contato

    validates_associated :contatos
end
