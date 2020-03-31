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
    #name.owner = self
    new_cat = Cat.all.select do |i|
      i.name == name   
    end
   # binding.pry
    new_cat.owner= self
  end

  def buy_dog
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
    dogs.each do |i|
      puts i
    end

    cats.each do |i|
      puts i
    end
  end

  
end