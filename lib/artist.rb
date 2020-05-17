
class Artist 
    attr_accessor :name
         
    def initialize(name)
        @name= name
    end

    def songs
        Song.all.select do |each_song| #Song class 
            each_song.artist = self #song self, which is @@all in initialize
        end
    end

    # takes in an argument of a song
    # associates that song with the artist by telling the song that it belongs to that artist 

    #create artist name var 

    def add_song(song) #the whole obj, not song title
        song.artist = self #.artist from song class
          
            #self = artist self 
            #self = Drake

          #how can we pass in the .artist method from SONG??? A: bc 
          #what's the difference btw this method and 'songs' method?        
    end



    def add_song_by_name(name) #name = string, song title?
        song = Song.new(name) #song = song obj
        song.artist = self
    end

 

      def self.song_count #class method
        Song.all.count
      end

end

#drake.add_song_by_name("hotline bling")

#drake = Song.new("hotline_bling")
#drake.add_song()
# drake.add_song(hotline_bling)
# hotline_bling.artist 
