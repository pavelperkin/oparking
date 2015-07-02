json.array!(@drivers) do |driver|
  json.extract! driver, :id, :car_number, :car, :name
  json.url driver_url(driver, format: :json)
end
