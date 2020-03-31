class Fish
  
  attr_accessor :owner, :mood
  attr_reader :name
  @@fish = []
  
  def initialize(name, owner, mood = "nervous")
    @name, @owner, @mood = name, owner, mood
    @@fish << self
  end
  
  def self.all
    @@fish
  end
end