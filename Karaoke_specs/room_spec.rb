require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../songs.rb")
require_relative("../guest.rb")


class TestRoom < MiniTest::Test

  def setup


    @song1 = Song.new("Delilah")
    @song2 = Song.new("Sit Down")
    @song3 = Song.new("Toxic")
    @song4 = Song.new("The Trooper")
    @song5 = Song.new("Candy")


    @guest1 = Guest.new("John", 40)
    @guest2 = Guest.new("Paul", 30)
    @guest3 = Guest.new("Ringo", 10)


    @room = Room.new("Blue Room", 4)

  end

  def test_check_room_has_name
    assert_equal("Blue Room", @room.room_name)

  end


  def test_check_room_has_size
    assert_equal(4, @room.room_capacity)
  end

  def test_can_add_guest_to_room
    @room.add_guest(@guest1)
    assert_equal(["John"], @room.guest)
  end


  # def test_guest_can_be_removed
  # @room.add_guest(@guest1)
  # @room.add_guest(@guest2)
  # @room.remove_guest(@guest1)
  #   assert_equal(1, @room.guest.length)
  # end

  def test_can_add_song_to_room
    @room.add_song(@song5)
    assert_equal(["Candy"], @room.playlist)
  end

end
