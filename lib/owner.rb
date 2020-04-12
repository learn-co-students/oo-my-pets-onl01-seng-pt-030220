class Owner
  # code goes here

attr_accessor :name, :owner, :species 
 
@@all = [ ]

def initialize(name)
   @name = name 
   @species = "human"
   @@all << self 
end 

def name=(owner) 
  @name.owner = owner
end 

def species=(human)
  @species.human = human
end 

def say_species
 return "I am a #{@species}."
end 

def self.all 
  @@all 
end 

def self.count 
 @@all.count 
end 

def self.reset_all 
   @@all.clear 
end 


def cats
   Cat.all.select { |c| c.owner == self }

end

def dogs 
  Dog.all.select {|d| d.owner == self}

end

def buy_cat(cat) 
  @cat = cat   
  Cat.new(cat,self) 
    
end 

def buy_dog(dog)
   @dog = dog 
   Dog.new(dog,self)
end 

def walk_dogs 
  dogs.each do |dog| 
    dog.mood = "happy"
  end 
end 

def feed_cats 
    cats.each do |cat|
      cat.mood = "happy"
    end
  end   

def sell_pets
    cats.each do |cat| 
      cat.mood = "nervous"
      cat.owner = nil  
    end
    dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil 
    end 
end 

 def list_pets 
 return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
 end 






end 