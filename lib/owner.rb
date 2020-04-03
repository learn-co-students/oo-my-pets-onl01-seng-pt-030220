require 'pry'

class Owner

  @@all = []
  @@count = 0

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
  @@all.clear
  end


  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
  end

  def species
 @name = "human"

  end

  def say_species
   @name = "I am a human."
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
    self.dogs.each {|walk| walk.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|feed| feed.mood = "happy"}
  end

  def sell_pets
    self.cats.each do |sell|
      sell.mood = "nervous"
      sell.owner = nil
  end

    self.dogs.each do |sell|
      sell.mood = "nervous"
      sell.owner = nil
    end
  end

  def list_pets
"I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
end

end