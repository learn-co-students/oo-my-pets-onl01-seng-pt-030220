class Cat 
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  attr_accessor :owner, :mood
  attr_reader :name 
  
  def initialize(name, owner = nil)
    @name = name 
    @owner = owner 
    owner.cats << self if owner 
    @mood = "nervous"
    save
  end 
  
  def save 
    @@all << self 
  end 
    
    
end 
