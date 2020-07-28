class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    @@all << song
    song
  end
  
  def self.new_by_name(newName)
    song = self.new 
    song.name = newName
    @@all << song 
    song
  end
  
  def self.create_by_name()
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
