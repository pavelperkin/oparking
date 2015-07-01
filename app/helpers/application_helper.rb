module ApplicationHelper
  def e(*args, &block)
    escape_javascript *args, &block
  end

  def block_width_class
    "col-md-#{12/@parkings.count}"
  end

  def panel_type_class(parking)
    "panel-#{parking.places.all?(&:occupied) ? 'danger' : 'info'}"
  end

  def occupied?(place)
    place.occupied ? 'occupied' : 'free' 
  end

  def button_title(place)
    place.occupied ? 'Освободить' : 'Занять'
  end
  
end

