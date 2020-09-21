class Song
  attr_accessor :name, :artist_name
  @@all = []

  def song.all
    @@all
  end

  def save
    self.class.all << self
  end

  def song.create
    song = self.new
    song
  end
  
  def song.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def song.create_by_name(name)
    song = self.create
    song.name = name
    @@all << song
    song
  end
  
  def song.find_by_name(name)
    @@all.find{|x| x.name == name}
  end
  
  def song.find_or_create_by_name(name)
    song.find_by_name(name)
    song.create_by_name(name)
  end
  
  def song.alphabetical()
    @@all.sort_by{|x| x.name}
  end
  
  def song.new_from_filename(name)
    song = song.new
    song.name = (name.split("-")[1].chomp(".mp3"))
    song.artist_name = (name.split("-")[0])
  end
  
  
  def song.create_from_filename(name)
    song = song.new
    song.name = (name.split("-")[1].chomp(".mp3"))
    song.artist_name = (name.split("-")[0])
    @@all << song
    song
  end
  
  def song.destroy_all()
    @@all.clear
  end
end  
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
    
