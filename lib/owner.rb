require 'pry'

class Owner
  
  attr_reader :name, :pets
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @pets = []
  end
  
  def species
    "human"
  end
  
  def say_species
    "I am a human."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def cats
    @pets.select { |pet| pet.is_a? Cat }
  end
  
  def dogs
    @pets.select { |pet| pet.is_a? Dog }
  end
  
  def add_cat(pet)
    @pets << pet
  end
  
  def add_dog(pet)
    @pets << pet
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    dogs.each(&:walk)
  end
  
  def feed_cats
    cats.each(&:feed)
  end
  
  def sell_pets
    pets.each(&:sell)
    @pets = []
  end
  
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
  
end