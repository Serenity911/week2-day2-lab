require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../bus_stop')
require_relative('../person')

class TestBusStop < Minitest::Test

  def setup
    @bus_stop = BusStop.new("Leith Walk")
    @person1 = Person.new("Andrew", 34)
    @person2 = Person.new("Sarah", 30)
  end

  def test_bus_stop_has_name
    assert_equal("Leith Walk", @bus_stop.name())
  end

  def test_bus_stop_queue_is_empty
    assert_equal(0, @bus_stop.queue.length)
  end

  def test_add_person_to_queue
    @bus_stop.add_person(@person1)
    assert_equal(1, @bus_stop.queue.length)
  end

  def test_empty_queue_works
    @bus_stop.add_person(@person1)
    @bus_stop.add_person(@person2)
    @bus_stop.empty_queue
    assert_equal(0, @bus_stop.queue.length)
  end

end
