json.extract! medicamento, :id, :nome, :tipo, :created_at, :updated_at
json.url medicamento_url(medicamento, format: :json)
