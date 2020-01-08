class Artist

  attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def songs
      Song.all.select do |song|
        song.artist == self
      end
    end 

    def new_song(name, genre)
      Song.new(name, self, genre)
    end 
    




end










# class Artist
#
#   attr_accessor :name
#
#   @@all = []
#
#     def initialize(name)
#       @name = name
#       @@all << self
#     end
#
#     def self.all
#       @@all
#     end
#
#     def new_song(name, genre)
#       songs = Song.new(name, self, genre)
#       self.songs.last
#     end
#
#     def songs
#       Song.all.select do |song|
#         song.artist == self
#       end
#     end
#
#     def genres
#       Song.all.map do |song|
#         song.genre
#       end
#     end
#
#
# end
