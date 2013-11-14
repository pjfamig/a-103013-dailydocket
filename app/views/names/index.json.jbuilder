json.array!(@names) do |name|
  json.extract! name, :content
  json.url name_url(name, format: :json)
end