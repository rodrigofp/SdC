json.extract! atendimento_chamado, :id, :chamado_id, :usuario_id, :status_interno_id, :status_externo_id, :base_id, :data, :descricao, :created_at, :updated_at
json.url atendimento_chamado_url(atendimento_chamado, format: :json)
