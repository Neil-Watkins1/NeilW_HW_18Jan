require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")


class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Jim", 35)
  end

  def test_guest_has_name
    assert_equal("Jim", @guest.name)
  end

  def test_guest_has_money
    assert_equal(35, @guest.wallet)
  end

end
