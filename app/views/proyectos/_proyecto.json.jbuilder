json.extract! proyecto, :id, :nombre, :imagen, :descripcion, :created_at, :updated_at
json.url proyecto_url(proyecto, format: :json)
