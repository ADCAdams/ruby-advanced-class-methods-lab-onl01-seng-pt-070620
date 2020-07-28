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
    song
  end
  
  def self.create_by_name(newName)
    song = self.new 
    song.name = newName
    @@all << song 
    song
  end
  
  def self.find_by_name(search_string)
    @@all.each do |all_song|
      return all_song if all_song.name == search_string
    end
    nil
  end
  
  def self.find_or_create_by_name(name_string)
    find_by_name(name_string) || create_by_name(name_string)
  end
  
  def self.alphabetical
    @@ll.sort_by { |song| song.name}
  end
  
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
