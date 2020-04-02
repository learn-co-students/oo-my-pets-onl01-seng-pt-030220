require 'pry'

class Owner

  @@all = []
  @@pets = {:dogs => [], :cats => []}

  #@@cats = []
  
  attr_accessor :cats, :dogs
  
  attr_reader :name, :species

  #OWNER_NAMES = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self

    #@cats = []
    #@dogs = []
  end 

  def say_species
    "I am a #{self.species}."
  end 

  def self.all
    @@all
  end 

  def self.count
    self.all.count
  end 

  def self.reset_all
    self.all.clear
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
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  end 

  def sell_pets
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil
      cat.mood = "nervous"
    end
    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil
      dog.mood = "nervous"
    end
  end 

  def list_pets
    no_of_dogs = self.dogs.count
    no_of_cats = self.cats.count
    "I have #{no_of_dogs} dog(s), and #{no_of_cats} cat(s)."
  end 

 

#binding.pry
end
#binding.pry
