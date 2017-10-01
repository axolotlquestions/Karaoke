class Club

  attr_reader :name, :rooms

 def initialize(name, rooms)
   @name = name
   @rooms = rooms
   @lobby = []
 end

 def welcome
   return "Welcome to #{self.name}"
 end

 def lobby
   return @lobby
 end

 def guests_waiting
   return "there are currently #{@lobby.length} guests waiting"
 end

 def check_in(guest)
   @lobby.push(guest)
 end

  def guest_to_room(guest, room)
    @lobby.delete(guest)
    (room).add_guest(guest)
    return "#{guest.name} is in the #{room.name} room"
  end

  def song_to_room(song, room)
    (room).add_song(song)
  end

end
