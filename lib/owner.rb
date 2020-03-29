class Owner
  
  attr_accessor :mood
  attr_reader :name, :species, :cats, :dogs
  
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = [ ]
    @dogs = [ ]
  end 
  
  def say_species
    "I am a human."
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
  
  def buy_cat(name)
    Cat.new(name, self)
  end 
  
  def buy_dog(name)
    Dog.new(name, self)
  end 
  
  def walk_dogs
    @dogs.each { |dog| dog.walk }
  end 
 
  def feed_cats
    @cats.each { |cat| cat.feed }
  end 
  
  def sell_pets
    @cats = @cats.each { |cat| cat.sell }.clear
    @dogs = @dogs.each { |dog| dog.sell }.clear
  end 
  
  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end 
end