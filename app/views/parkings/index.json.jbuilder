json.parkings(@parkings) do |parking|
  json.extract! parking, :id, :name
  json.url parking_url(parking, format: :json)
  json.places(parking.places) do |place|
    json.extract! place, :id, :number, :occupied, :updated_at
  end
end
