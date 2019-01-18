require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../songs")
require_relative("../guest")


class TestRoom < MiniTest::Test

  def setup


    @song1 = Song.new("Delilah", "Florence & the Machine")
    @song2 = Drink.new("Sit Down", "James")
    @song3 = Drink.new("Poison", "Alice Cooper")
    @song4 = Drink.new("The Trooper", "Iron Maiden")
    @song5 = Drink.new("Candy", "Paolo Nutini")


    @guest1 = Customer.new("John")
    @guest2 = Customer.new("Paul")
    @guest3 = Customer.new("Ringo")

  end

    @room = Room.new("Blue Room", 2)
  end

  def test_check_room_has_name
    assert_equal("Blue Room", @room.room_name)

  end

  def test_check_room_has_size
    assert_equal(4, @room.room_capacity)
  end



end
