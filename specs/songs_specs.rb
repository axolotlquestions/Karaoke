require 'minitest/autorun'
require 'minitest/rg'

require_relative '../songs'

class TestSongs < MiniTest::Test

  def setup
    @song1 = Song.new("Just a Friend")
    @song2 = Song.new("Love Shack")
    @song3 = Song.new("Let's Stay Together")
    @song4 = Song.new("Space Oddity")
  end

  def test_song_has_title
    assert_equal("Just a Friend", @song1.title)
  end

end
