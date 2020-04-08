class Owner
  
  @@all = []
 
 attr_accessor :pets
 attr_reader :name, :species
 
 def self.all
   @@all 
 end
 
 def self.count 
   @@all.count
 end
 
 def self.reset_all 
   @@all.clear
 end
 
 def initialize(name)
   @name = name
   @species = "human"
   @pets = {:cats => [], :dogs => []}
   @@all << self
 end
 
 def say_species
   "I am a human."
 end
    
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
    
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
    
  def buy_cat(name)
    pets[:cats] << Cat.new(name, self)
  end
    
  def buy_dog(name)
    pets[:dogs] << Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each {|dog| dog.mood = "happy"}
  end
  
  def feed_cats
    cats.each {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    new_life = self.cats + self.dogs
    new_life.each do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
    
end