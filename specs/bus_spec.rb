require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')

class TestBus < Minitest::Test

  def setup
    @bus = Bus.new("22", "Ocean terminal")
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


end
