class Owner
  attr_reader :name, :species
  
  @@all = []
  
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@all.count
  end 
  
  def self.reset_all
    @@all.clear()
  end 
  
  def initialize(name)
    @name = name 
    @species = 'human'
    
    save
  end 
  
  def say_species 
   "I am a #{self.species}."
  end
  
  def cats 
    Cat.all.select do |cat| 
       cat.owner == self
    end
  end
  
  def dogs
    Dog.all.select do |dog| 
       dog.owner == self
    end
  end 
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each do |dog|
      dog.mood = 'happy'
    end
  end
  
  def feed_cats
    cats.each do |cat|
      cat.mood = 'happy'
    end
  end
  
  def pets
    cats + dogs
  end
  
   def sell_pets
    self.pets.each do |pet|
        pet.mood = 'nervous'
        pet.owner = nil
      end
  end
  
  def list_pets
    "I have #{dogs.length} dog(s), and #{cats.length} cat(s)."
  end
  
  def save 
    @@all << self
  end
end

