json.array!(@addicional_informations) do |addicional_information|
  json.extract! addicional_information, :id
  json.url addicional_information_url(addicional_information, format: :json)
end
