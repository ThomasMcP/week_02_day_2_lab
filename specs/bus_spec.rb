require("minitest/autorun")
require("minitest/rg")
require_relative("../bus")
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
    @tom = Person.new("Tom", 27)
    @alex = Person.new("Alex", 29)
    @pawel = Person.new("Pawel", 31)
    @bus1 = Bus.new(22, "Ocean Terminal")
  end

  def test_route_number
    expected = 22
    actual = @bus1.route_number
    assert_equal(expected, actual)
  end

  def test_destination
    expected = "Ocean Terminal"
    actual = @bus1.destination
    assert_equal(expected, actual)
  end

  def test_drive_method
    expected = "Brum brum"
    actual = @bus1.drive
    assert_equal(expected, actual)
  end

  def test_number_of_passengers__0
    assert_equal(0, @bus1.passengers.length)
  end

  def test_number_of_passengers__added_1
    expected = 1
    @bus1.pick_up(@tom)
    actual = @bus1.passengers.length
    assert_equal(expected, actual)
  end

  def test_passenger_off_bus
    # @bus1.pick_up(@tom)
    expected = 0
    # @bus1.drop_off(@tom)
    assert_equal(expected, @bus1.passengers.length)
  end

end
