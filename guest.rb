class Guest

  attr_accessor :name, :wallet, :fav_song

  def initialize(name, wallet, fav_song)

    @name = name
    @wallet = wallet
    @fav_song = fav_song


  end

  def spend_money(spendings)
    @wallet -= (spendings)
  end

  
end
