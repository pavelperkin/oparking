json.places(@places) do |place|
  json.extract! place, :id, :number, :parking_id, :occupied
  json.parking_name place.parking.name
end
