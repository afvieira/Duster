json.array!(@additional_informations) do |additional_information|
  json.extract! additional_information, :id
  json.url additional_information_url(additional_information, format: :json)
end
