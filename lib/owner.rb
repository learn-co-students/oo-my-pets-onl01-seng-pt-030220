require 'pry'
class Owner
  attr_reader :name, :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
    "I am a #{@species}."
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
    Cat.all.select {|cats| cats.owner == self}
  end

  def dogs
    Dog.all.select {|dogs| dogs.owner == self}
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
   doggy = Dog.all.find {|dogs| dogs.owner == self}
   doggy.mood = "happy"
  end

  def feed_cats
    kitty = Cat.all.find { |cats| cats.owner == self}
    kitty.mood = "happy"
  end
  
  def sell_pets
    Cat.all.each do |cats|
      cats.mood = "nervous"
      cats.owner = nil
    end
    Dog.all.each do |dogs| 
      dogs.mood = "nervous"
      dogs.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end

# me = Owner.new("marcos")
# dog = Dog.new("brown", me)
# cat = Cat.new("yella", me)

# me.list_pets
