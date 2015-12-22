json.array!(@kinds) do |kind|
  json.extract! kind, :id, :name, :color, :personal
  json.url kind_url(kind, format: :json)
end
