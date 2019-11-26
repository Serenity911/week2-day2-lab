class Bus

attr_reader :route_number, :destination

  def initialize(route_number, destination)
    @route_number = route_number
    @destination = destination
    @passengers = []
  end

  def drive()
    return "Brum Brum"
  end

  def passengers_count
    return @passengers.length
  end

  def pick_up(passenger)
    @passengers << passenger
  end

  def drop_off(passenger)
    @passengers.delete(passenger)
  end

  def empty_bus()
    @passengers = []
  end

  def pick_up_from_stop(bus_stop)
    # people_in_queue = []
    for person in bus_stop.queue
      @passengers << person
    end
    bus_stop.empty_queue

  end

end
