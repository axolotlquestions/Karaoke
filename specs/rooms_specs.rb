require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guests'
require_relative '../songs'
require_relative '../rooms'

class TestRoom < MiniTest::Test

  def setup
    @guest1 = Guest.new("Alice", 25, ["Just a Friend", "Love Shack"])
    @guest2 = Guest.new("Bob", 30, ["Let's Stay Together", "Space Oddity"])
    @guest3 = Guest.new("Carol", 10, ["Love Shack", "Space Oddity"])
    @guest4 = Guest.new("Dave", 10, ["Just a Friend", "Let's Stay Together"])
    @guest5 = Guest.new("Erin", 10, ["Just a Friend", "Space Oddity"])
    @guest6 = Guest.new("Frank", 0, ["Let's Stay Together", "Love Shack"])

    @song1 = Song.new("Just a Friend")
    @song2 = Song.new("Love Shack")
    @song3 = Song.new("Let's Stay Together")
    @song4 = Song.new("Space Oddity")
    @room1 = Room.new("VIP")
    @room2 = Room.new("Ground")
    @room3 = Room.new("Mezzanine")
  end
  #
  def test_room_has_name
    assert_equal("VIP", @room1.name)
  end
  #
  def test_room_has_guests
    assert_equal([], @room1.guests)
  end
  #
  def test_room_has_songs
    assert_equal([], @room1.songs)
  end
  #
  def test_room_add_guests()
    @room1.add_guest(@guest1)
    assert_equal([@guest1], @room1.guests)
  end
  #
  # #
  def test_room_add_multiple_guests()
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    assert_equal([@guest1, @guest2], @room1.guests)
  end
  # #
  def test_room_remove_guest
    @room1.add_guest(@guest1)
    @room1.remove_guest(@guest1)
    assert_equal([], @room1.guests)
  end
  # #
  def test_room_add_song
    @room1.add_song(@song1)
    assert_equal([@song1], @room1.songs)
  end
  # #
  def test_room_full
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest3)
    @room1.add_guest(@guest4)
    @room1.add_guest(@guest5)
    assert_equal(4, @room1.guests.length)
  end

  def test_that_guest_can_pay
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest6)
    assert_equal(2, @room1.guests.length)
  end

  def test_cheering
    @room1.add_guest(@guest1)
    assert_equal("Wooo!", @room1.add_song(@song1))
    assert_equal([@song1], @room1.songs)
  end

end
