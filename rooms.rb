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

  # def add_guest(guest)
  # return "sorry you can't afford it" if guest.money < 5
  #   if @guests.length < 4
  #     @guests.push(guest)
  #   else
  #     puts "Sorry, room full"
  #   end

  def add_guest(guest)
  return "sorry you can't afford it" if guest.money < 5
  return "sorry, room full" if @guests.length >= 4
  @guests.push(guest)
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs.push(song)
    for guest in guests
      if guest.fav_songs.include?(song.title)
        return "Wooo!"
      end
    end
  end

end
