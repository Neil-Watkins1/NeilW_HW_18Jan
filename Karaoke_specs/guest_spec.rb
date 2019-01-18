require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")


class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Jim")
  end

  def test_guest_has_name
    assert_equal("Jim", @guest.name)
  end

end
