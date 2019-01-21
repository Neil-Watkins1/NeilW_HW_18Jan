class Room

  attr_accessor :room_name, :room_capacity, :guest, :playlist, :till

  def initialize(room_name, room_capacity, guest, playlist, till)

    @room_name = room_name
    @room_capacity = room_capacity
    @guest = guest
    @playlist = playlist
    @till = till

  end

  def add_guest(new_guest)
    if @guest.count < @room_capacity
      @guest << (new_guest).name
    else
      return "Sorry room is full"
    end
  end

  def remove_guest(guest)
    @guest.delete(guest)
  end

  def add_song(new_song)
    @playlist << (new_song).title
  end

  def fav_song_response (guest, fav_song)
    add_guest(guest)
    if @playlist.include?(fav_song)
      return "Wooo #{fav_song} is my favourite!"
    end
  end

  # def recieve_money(guest, money)
  #
  # end
end
