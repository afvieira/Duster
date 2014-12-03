json.array!(@premia) do |premium|
  json.extract! premium, :id
  json.url premium_url(premium, format: :json)
end
