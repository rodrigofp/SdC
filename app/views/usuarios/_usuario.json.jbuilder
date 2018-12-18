json.extract! usuario, :id, :nome, :senha, :cpf, :tipo_usuario_id, :cliente_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
