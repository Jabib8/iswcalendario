json.array!(@cursos) do |curso|
  json.extract! curso, :id, :descripcion, :carreras
  json.url curso_url(curso, format: :json)
end
