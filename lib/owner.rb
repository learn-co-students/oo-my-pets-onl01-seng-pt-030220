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
    new_cat = Cat.all.select do |i|
      i.name == name
    end
    
    new_cat.owner= self

  end

end