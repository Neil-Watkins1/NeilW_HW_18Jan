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


    @guest1 = Guest.new("John", 40, "The Trooper")
    @guest2 = Guest.new("Paul", 30, "Toxic")
    @guest3 = Guest.new("Ringo", 10, "Candy")


    @room = Room.new("Blue Room", 4, ["George"], ["Delilah", "The Trooper", "Toxic"], 50)

  end

  def test_check_room_has_name
    assert_equal("Blue Room", @room.room_name)

  end


  def test_check_room_has_size
    assert_equal(4, @room.room_capacity)
  end

  def test_can_add_guest_to_room
    @room.add_guest(@guest1)
    assert_equal(["George", "John"], @room.guest)
  end


  def test_can_add_guest_to_room_no_space
    @room1 = Room.new("Blue Room", 1, ["George"], ["Delilah", "The Trooper", "Toxic"], 50)
    @room.add_guest(@guest1)
    assert_equal("Sorry room is full", @room1.add_guest(@guest1))
  end

  def test_guest_can_be_removed
    @room.remove_guest(@guest1)
    assert_equal(1, @room.guest.length)
  end

  def test_can_add_song_to_room
    @room.add_song(@song5)
    assert_equal(["Delilah", "The Trooper", "Toxic", "Candy"], @room.playlist)
  end

  def test_favourite_song
    @room.fav_song_response(@guest1, @guest1.fav_song)
    assert_equal("Wooo The Trooper is my favourite!", @room.fav_song_response(@guest1, @guest1.fav_song))
  end

  def test_room_has_till
    assert_equal(50, @room.till)

  end

  # def test_till_can_recieve_money
  #   @room.recieve_money(@guest1, 5)
  #   assert_equal(55, @room.till)
  # end


end
