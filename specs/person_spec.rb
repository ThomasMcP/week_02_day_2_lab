require("minitest/autorun")
require("minitest/rg")
require_relative("../person")

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Tom", 27)
  end

  def test_name
    expected = "Tom"
    actual = @person1.name
    assert_equal(expected, actual)
  end

  def test_age
    assert_equal(27, @person1.age)
  end

end
