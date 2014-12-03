json.array!(@utilizadors) do |utilizador|
  json.extract! utilizador, :id
  json.url utilizador_url(utilizador, format: :json)
end
