class Bus

  attr_reader :route_number, :destination, :passengers

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum brum"
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
    for person in @passengers
      @passenger.delete(passenger) if person == passenger
    end
  end

end
