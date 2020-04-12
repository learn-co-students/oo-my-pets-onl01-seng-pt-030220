class Dog
  # code goes here
  attr_accessor :name, :owner, :dog
  attr_writer  :mood  
 @@all = [ ]

  def initialize(name,owner)
     @name = name 
     @owner = owner 
     @mood = "nervous"
     @dog =  dog
     @@all << self 
  end
  
  def name=(dog)
    @name.dog = (dog)
  end 

  def mood 
    @mood 
  end 


def self.all
  @@all 
end 

end 