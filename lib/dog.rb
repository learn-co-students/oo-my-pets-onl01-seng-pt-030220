class Dog
  attr_reader :name
  attr_accessor :mood, :owner
  
  @@all= []

  def initialize(name, mood= "nervous", owner)
    @mood = mood
    @name = name
    @owner = owner
    @@all << self
  end
  
  def self.all
    @@all
  end
end