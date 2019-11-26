require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class TestBus < Minitest::Test

  def setup
    @bus = Bus.new("22", "Ocean terminal")
    @passenger1 = Person.new("Bob", 21)
    @passenger2 = Person.new("Steve", 23)
  end

  def test_bus_has_route_number
    assert_equal("22", @bus.route_number)
  end

  def test_bus_has_destination
    assert_equal("Ocean terminal", @bus.destination)
  end

  def test_bus_can_drive
    assert_equal("Brum Brum", @bus.drive)
  end

  def test_bus_passengers_count
    assert_equal(0, @bus.passengers_count)
  end

  def test_bus_pick_up
    @bus.pick_up(@passenger1)
    assert_equal(1, @bus.passengers_count)
  end

  def test_bus_drop_off
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.drop_off(@passenger1)
    assert_equal(1, @bus.passengers_count)
  end

  def test_empty_bus
    @bus.pick_up(@passenger1)
    @bus.pick_up(@passenger2)
    @bus.empty_bus()
    assert_equal(0, @bus.passengers_count)
  end

end
