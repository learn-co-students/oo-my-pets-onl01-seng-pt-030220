class Cat

  attr_accessor :name, :owner, :cat 
  attr_writer :mood 
 
  @@all = [ ]
  
def initialize(name, owner)
  @name = name
  @owner = owner
  @mood = "nervous"
  @cat = cat 
  @@all << self 
end 

def name=(cat)
  @name.cat = cat  
end 
   
def mood 
  @mood
end 


def self.all 
  @@all 
end 





end