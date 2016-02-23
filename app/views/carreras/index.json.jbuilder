json.array!(@carreras) do |carrera|
  json.extract! carrera, :id, :descripcion
  json.url carrera_url(carrera, format: :json)
end
