json.extract! usuario, :id, :nombre, :apellidos, :categoria, :rol, :datos, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
