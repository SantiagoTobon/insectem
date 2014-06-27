json.array!(@especimen) do |especiman|
  json.extract! especiman, :id, :extension, :dominio, :filo, :clase, :orden, :familia, :genero, :especie, :observaciones
  json.url especiman_url(especiman, format: :json)
end
