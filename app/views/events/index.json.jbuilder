json.array!(@events) do |event|
  json.extract! event, :id, :title, :description, :city_id, :address, :start, :end, :wifi, :power
  json.url event_url(event, format: :json)
end
