require 'minitest/autorun'
require 'minitest/rg'

require_relative '../guests'
require_relative '../songs'
require_relative '../rooms'
require_relative '../club'

class TestClub < MiniTest::Test

  def setup
    @guest1 = Guest.new("Alice", 25, ["Just a Friend", "Love Shack"])
    @guest2 = Guest.new("Bob", 30, ["Let's Stay Together", "Space Oddity"])
    @guest3 = Guest.new("Carol", 10, ["Love Shack", "Space Oddity"])
    @guest4 = Guest.new("Dave", 0, ["Just a Friend", "Let's Stay Together"])

    @song1 = Song.new("Just a Friend")
    @song2 = Song.new("Love Shack")
    @song3 = Song.new("Let's Stay Together")
    @song4 = Song.new("Space Oddity")
    @room1 = Room.new("VIP")
    @room2 = Room.new("Ground")
    @room3 = Room.new("Mezzanine")

    @club1 = Club.new("Codeclan Caraoke Club", [@room1, @room2, @room3])
  end

  def test_club_has_name
    assert_equal("Codeclan Caraoke Club", @club1.name)
  end

  def test_club_has_rooms
    assert_equal([@room1, @room2, @room3], @club1.rooms)
  end

  def test_welcome
   assert_equal("Welcome to Codeclan Caraoke Club", @club1.welcome)
  end

  def test_guests_waiting
    assert_equal("there are currently 0 guests waiting", @club1.guests_waiting)
  end

  def test_check_in
    @club1.check_in(@guest1)
    assert_equal("there are currently 1 guests waiting", @club1.guests_waiting)
  end

  def test_guest_to_room
    @club1.check_in(@guest1)
    assert_equal("Alice is in the VIP room", @club1.guest_to_room(@guest1, @room1))
    assert_equal("there are currently 0 guests waiting", @club1.guests_waiting)
    assert_equal([@guest1], @room1.guests)
  end

  def test_song_to_room
    @club1.song_to_room(@song1, @room1)
    assert_equal([@song1], @room1.songs)
  end

end
