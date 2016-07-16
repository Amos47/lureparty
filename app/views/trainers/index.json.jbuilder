json.array!(@trainers) do |trainer|
  json.extract! trainer, :id, :name, :phone, :email, :team, :location, :radius
  json.url trainer_url(trainer, format: :json)
end
