json.extract! filme, :id, :nome, :genero, :preco, :created_at, :updated_at
json.url filme_url(filme, format: :json)
