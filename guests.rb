class Guest

  attr_accessor :name, :money, :fav_songs

  def initialize(name, money, fav_songs)
    @name = name
    @money = money
    @fav_songs = fav_songs
  end

end
