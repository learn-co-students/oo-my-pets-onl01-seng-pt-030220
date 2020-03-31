require 'pry'

class Owner
  attr_reader :name, :species
  @@all = []

  def initialize(name)
    @name = name
    @species = 'human'
    @@all << self
  end

  def say_species
    output = "I am a #{@species}."

  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select do |i|
      i.owner == self
    end
  end

  def dogs
    Dog.all.select do |i|
      i.owner == self
    end
  end

  def buy_cat(name)
  
    new_cat = Cat.all.detect do |i|
      i.name == name   
    end
   
   if new_cat == nil || []
      Cat.new(name, self)
   else
    new_cat.owner= self
   end
  end

  def buy_dog(name)
    new_dog = Dog.all.detect do |i|
      i.name == name   
    end
   
   if new_dog == nil || []
      Dog.new(name, self)
   else
    new_dog.owner= self
   end
  end

  def walk_dogs
    dogs.map do |i|
      i.mood = 'happy'
    end
  end

  def feed_cats
    cats.map do |i|
      i.mood = 'happy'
    end
  end

  def sell_pets
    dogs.map do |i|
      i.mood = 'nervous'
      i.owner = nil
    end

    cats.map do |i|
      i.mood = 'nervous'
      i.owner = nil
    end
  end

  def list_pets
    dog_num = dogs.count
    cat_num = cats.count
    list = "I have #{dog_num.to_s} dog(s), and #{cat_num.to_s} cat(s)."
  end

  
end