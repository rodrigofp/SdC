json.extract! atendimento_chamado_status, :id, :usuario_id, :status_interno_id, :status_externo_id, :data, :descricao, :created_at, :updated_at
json.url atendimento_chamado_status_url(atendimento_chamado_status, format: :json)
