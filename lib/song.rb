class Song
  attr_accessor :name, :artist_name
  @@all = []
  def initialize
    @@all << self
  end
  def self.all
    @@all
  end
  def self.create
    self.new
  end
  def save
    self.class.all << self
  end
  def self.create_by_name(name)
    new_song=self.new
    new_song.name = name 
  end
  def self.find_by_name
    
  end
end
