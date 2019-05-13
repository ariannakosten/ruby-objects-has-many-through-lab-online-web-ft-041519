class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre) #genre creates a new song n tells it it belongs to that artist
  end

  def songs
    #self.all.select finds songs that belong to that artost
    Song.all.select do |song|
      if song.artist == self
        @songs << song
  end
end
@songs
end

  def genres
    #iterates over artists songs and collects genre of each song.
    Song.all.select do |song|
      if song.artist == self
        @genres << song.genre
  end
end
@genres
end
end
