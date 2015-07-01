json.array!(@places) do |place|
  json.extract! place, :id, :number, :parking_id, :occupied
  json.url place_url(place, format: :json)
end
