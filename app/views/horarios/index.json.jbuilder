json.array!(@horarios) do |horario|
  json.extract! horario, :id, :nombre, :horario_inicio, :horario_fin
  json.url horario_url(horario, format: :json)
end
