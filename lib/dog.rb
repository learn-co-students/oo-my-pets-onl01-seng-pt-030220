class Dog
  
  attr_accessor :owner, :mood
  attr_reader :name
  
  @@all = []
  
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    owner.add_dog(self)
  end

  def self.all
    @@all
  end
  
  def walk
    self.mood = 'happy'
  end
  
  def sell
    self.mood = 'nervous'
    self.owner = nil
  end
  
end