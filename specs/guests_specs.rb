require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guests'

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Alice", 25, ["Just a Friend", "Love Shack"])
    @guest2 = Guest.new("Bob", 30, ["Let's Stay Together", "Space Oddity"])
    @guest3 = Guest.new("Carol", 10, ["Love Shack", "Space Oddity"])
    @guest4 = Guest.new("Dave", 0, ["Just a Friend", "Let's Stay Together"])
  end

  def test_has_name
    assert_equal("Alice", @guest1.name)
  end

  def test_has_money
    assert_equal(30, @guest2.money)
  end

  def test_has_fav_songs
    assert_equal(["Love Shack", "Space Oddity"], @guest3.fav_songs)
  end

end
