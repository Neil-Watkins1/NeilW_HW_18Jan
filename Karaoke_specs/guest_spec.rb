require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")


class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Jim", 35, "Lets do It")
  end

  def test_guest_has_name
    assert_equal("Jim", @guest.name)
  end

  def test_guest_has_money
    assert_equal(35, @guest.wallet)
  end

  def test_guest_has_favorite_song
    assert_equal("Lets do It", @guest.fav_song)
  end

  def test_guest_can_spend_money
    @guest.spend_money(5)
    assert_equal(30, @guest.wallet)
  end

end
