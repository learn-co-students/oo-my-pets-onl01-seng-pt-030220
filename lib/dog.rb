class Dog
  
  attr_accessor :mood, :owner
  attr_reader :name
  
  @@dogs = []
  
  def initialize(name, owner, mood = 'nervous')
    @name, @owner, @mood = name, owner, mood
    @@dogs << self
  end
  
  def self.all
    @@dogs
  end
end