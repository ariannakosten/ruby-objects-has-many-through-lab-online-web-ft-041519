class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @artists = []
    @@all << self
  end

def self.all
  @@all
end

  def songs
    #self.all.select finds songs that belong to that artost
    Song.all do |song|
     song.genre == self
  end
end

  def artists
    #iterates over artists songs and collects genre of each song.
    Song.all.select do |song|
      if song.genre == self
        @artists << song.artist
  end
end
@artists
end
end
