class Owner
  
  @@all = []
  
  def self.all 
    @@all
  end 
  
  def self.reset_all
    @@all.clear 
  end 
  
  def self.count 
    @@all.size 
  end 
  
  
  attr_reader :name, :species
  attr_accessor :pets, :human
  
  def initialize(name)
    @name = name 
    @species = "human"
    @pets = {:dogs => [], :cats => []}
    save
  end 
  
  def save
    @@all << self
  end 
  
  def say_species
    "I am a #{species}."
  end 
  
  def cats 
    @pets[:cats]
  
  end 
  
  def dogs 
    @pets[:dogs]
  end 
  
  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end 
  
  def buy_dog(dog_name)
    Dog.new(dog_name, self)
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
    self.pets.each do |pt, pa|
      pa.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end 
      pa.clear
    end 
  end 
  
  def list_pets 
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end 
end 
  
  