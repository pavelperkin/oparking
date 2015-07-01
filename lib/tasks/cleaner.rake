task clean_parking: :environment  do
  Place.all.each do |place|
    place.update(occupied: false)
  end
end
