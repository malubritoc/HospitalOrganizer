json.extract! paciente, :id, :nome, :leito_internacao, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
