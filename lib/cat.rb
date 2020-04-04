class Cat

  @@all = []

  def self.all
   @@all 
  end
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
  end
 
 

  
  
end