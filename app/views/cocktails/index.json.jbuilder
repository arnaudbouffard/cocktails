json.array!(@cocktails) do |cocktail|
  json.extract! cocktail, :id, :name, :picture, :description
  json.url cocktail_url(cocktail, format: :json)
end
