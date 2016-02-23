json.array!(@recintos) do |recinto|
  json.extract! recinto, :id, :nombre, :direccion, :horario_id
  json.url recinto_url(recinto, format: :json)
end
