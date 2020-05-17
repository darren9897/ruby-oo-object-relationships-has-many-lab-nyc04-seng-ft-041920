class Song

    attr_reader :name  #song title? #attr reader macro
    attr_accessor :artist #artist var #instance var obj
    @@all = [] #class var
    
    def initialize(name) #song title and artist?????
        @name = name #instance var
        @@all << self 

    end
    
    def self.all #class method 
        @@all
    end

    def artist_name #each artist 
        if self.artist
            self.artist.name
        else
            nil
        end
    end


end


