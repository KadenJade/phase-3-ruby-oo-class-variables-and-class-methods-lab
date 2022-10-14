class Song

@@count = 0
@@genres = []
@@artists = []

attr_accessor :song, :artist, :genre

initialize (song, artist, genre)
@song = song
@artist = artist
@genre = genre
@@count += 1
@@genres << genre
@@artists << artist
end

def self.count
@@count
end

def self.artists
    @@artists.uniq
end

def self.artists_count
    artist_count = {}
    @@artist.each do |artist|
        if artist_count[artist]
            artist_count[artist] += 1
        else
            artist_count[artist] = 1
        end
    end
    artist_count
end


def self.genres
@@genres.uniq
end

def self.genres
    genre_count = {}
    @@genres.each do |genre|
        if genre_count[genre]
            genre_count[genre] += 1
        else
            genre_count[genre] = 1
        end
    end
   genre_count
end

