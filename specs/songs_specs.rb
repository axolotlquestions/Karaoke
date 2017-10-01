require 'minitest/autorun'
require 'minitest/rg'

require_relative '../songs'

class TestSongs < MiniTest::Test

  def setup
    @song1 = Song.new("abc")
    @song2 = Song.new("def")
    @song3 = Song.new("qrt")
    @song4 = Song.new("xyz")
  end

  def test_song_has_title
    assert_equal("abc", @song1.title)
  end

end
