json.array!(@service_type_service_providers) do |service_type_service_provider|
  json.extract! service_type_service_provider, :id
  json.url service_type_service_provider_url(service_type_service_provider, format: :json)
end
