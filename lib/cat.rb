class Cat
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    owner.add_cat(self)
  end
  
  def self.all
    @@all
  end
  
  def feed
    @mood = "happy"
  end
  
  def sell
    @mood = "nervous"
    self.owner = nil
  end
  
end