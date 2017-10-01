class Room

  def initialize(name)
    @name = name
    @guests = []
    @songs = []
  end

  def name()
    return @name
  end

  def guests()
    return @guests
  end

  def songs()
    return @songs
  end

  def add_guest(guest)
    if @guests.length < 4
      @guests.push(guest)
    else
      puts "Sorry, room full"
    end

  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs.push(song)
  end

end
