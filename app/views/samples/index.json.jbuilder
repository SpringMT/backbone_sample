json.array!(@samples) do |sample|
  json.extract! sample, :name
  json.url sample_url(sample, format: :json)
end
