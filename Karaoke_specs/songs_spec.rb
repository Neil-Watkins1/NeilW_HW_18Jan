require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")


class TestSong < MiniTest::Test

  def setup
    @song = Song.new("Delilah", "Florence & the Machine")
  end

  def test_song_has_title
    assert_equal("Delilah", @song.title)
  end
end
