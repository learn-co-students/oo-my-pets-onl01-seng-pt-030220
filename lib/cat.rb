class Cat
  attr_accessor :owner, :mood, :pets
  attr_reader :name
  
  @@all = []
  @@pets = {:pets => [], :cats => []}
  
  
  def initialize(name, owner)
      @name = name  #can have a name
      @mood = "nervous" 
      @owner = owner
      @@all << self
    end 

  
    def self.all
    @@all
  end
  
  def self.count
    @@all.length 
  end 
	
  
  
  
end
        