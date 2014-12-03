json.array!(@service_provider_premia) do |service_provider_premium|
  json.extract! service_provider_premium, :id
  json.url service_provider_premium_url(service_provider_premium, format: :json)
end
