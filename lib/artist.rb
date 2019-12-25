class Artist
  attr_reader :name
  @@all = []
  
  
  def initialize (name)
    @name =name
    @@all << self
  end
  
  def all
    @@all
  end
  
end