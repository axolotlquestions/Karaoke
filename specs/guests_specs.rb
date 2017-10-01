require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guests'

class TestGuest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Alice", 25, ["abc", "def"])
    @guest2 = Guest.new("Bob", 30, ["qrt", "xyz"])
    @guest3 = Guest.new("Carol", 10, ["def", "xyz"])
    @guest4 = Guest.new("Dave", 0, ["abc", "qrt"])
  end

  def test_has_name
    assert_equal("Alice", @guest1.name)
  end

  def test_has_money
    assert_equal(30, @guest2.money)
  end

  def test_has_fav_songs
    assert_equal(["def", "xyz"], @guest3.fav_songs)
  end

end
