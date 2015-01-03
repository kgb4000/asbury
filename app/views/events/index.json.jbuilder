json.array!(@events) do |event|
  json.extract! event, :id, :name, :date, :time, :description, :image
  json.url event_url(event, format: :json)
end
