class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  def self.create
    new_song=Song.new
    new_song.save
    return new_song
  end
  def self.new_by_name(song_name)
    new_song=self.new
    new_song.name = song_name 
    return new_song
  end
   def self.create_by_name(song_name)
    song = self.new_by_name(song_name)
    song.save
    song
  end
  def self.find_by_name(name)
    Song.all.find {|song| song.name == name}
  end
   def self.find_or_create_by_name(name)
    if self.find_by_name(name) != nil
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end
  def self.alphabetical
    self.all.sort_by {|song| song.name}
  end
  def self.new_from_filename
    
  end
   def self.destroy_all
    self.all.clear
  end
  def self.new_from_filename(filename)
    things = filename.split(" - ")
    name_artist = things[0]
    song_name = things[1][0..-5]
    song = self.create
    song.name = song_name
    song.artist_name = name_artist
    return song
  end
  def self.create_from_filename(filename)
    things = filename.split(" - ")
    name_artist = things[0]
    song_name = things[1][0..-5]
    song = self.create
    song.name = song_name
    song.artist_name = name_artist
    return song
  end
end
