json.array!(@periodos) do |periodo|
  json.extract! periodo, :id, :nombre, :estado, :fecha_inicio, :fecha_final, :aula_labs
  json.url periodo_url(periodo, format: :json)
end
