json.array!(@specialties) do |specialty|
  json.extract! specialty, :id, :name, :slug
  json.url specialty_url(specialty, format: :json)
end
