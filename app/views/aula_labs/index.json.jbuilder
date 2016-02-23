json.array!(@aula_labs) do |aula_lab|
  json.extract! aula_lab, :id, :recintos, :descripcion, :observacion, :personas
  json.url aula_lab_url(aula_lab, format: :json)
end
