class BusStop

  def initialize(name)
    @name = name
    @queue = []
  end

attr_reader :name, :queue

  def add_person(person)
    @queue << person
  end

  def empty_queue
    @queue = []
  end

end
